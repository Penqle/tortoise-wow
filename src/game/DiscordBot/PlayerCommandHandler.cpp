#include "PlayerCommandHandler.hpp"
#include "DiscordBot/toojpeg.hpp"
#include "DiscordBot/QrCodeGen.hpp"

#include "DiscordBot/AuthManager.hpp"
#include "Util.h"
#include "DiscordBot/MiscUtil.hpp"

#include "Auth/base32.h"

#include <sstream>

namespace DiscordBot
{
    using qrcodegen::QrCode;
    using qrcodegen::QrSegment;

    using namespace dpp;


    bool PlayerCommandHandler::IsAuthorized(const user* user) const
    {
        return AuthManager::Instance()->IsAuthenticated(user); // for player commands players only need to have their discord account linked.
    }

    void PlayerCommandHandler::RegisterCommands(commandhandler& registrar)
    {
        Register("twofactor", {},
            MakeCommandHandler(&PlayerCommandHandler::TwoFactorCommand),
            "Sets two-factor authentication for your account.");



        _commHandler = &registrar;
    }

    void PlayerCommandHandler::TwoFactorCommand(const std::string& command, const parameter_list_t& parameters, command_source src)
    {
        auto authInfo = AuthManager::Instance()->GetAuthInfo(&src.issuer);

        if (!authInfo)
            return;

        std::string accountName = authInfo->gameAccountName;

        //format : otpauth://totp/AccountName?secret=Secret&issuer=Turtle-WoW

        constexpr uint16_t KeyLength = 20;

        std::string generatedSecret;
        generatedSecret.reserve(KeyLength);

        const std::string usableChars = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
        for (int i = 0; i < KeyLength; ++i)
        {
            generatedSecret += usableChars[urand(0, usableChars.size() - 1)];
        }

        std::string output;
        output.resize(KeyLength * 1.6);

        base32_encode((const uint8_t*)generatedSecret.data(), KeyLength, (uint8_t*)output.data(), output.size());



        std::ostringstream ss;
        ss << "otpauth://totp/" << accountName << "?secret=" << output << "&issuer=Turtle-WoW";

        const QrCode qr = QrCode::encodeText(ss.str().c_str(), QrCode::Ecc::LOW, 1);
        std::vector<uint8_t> data;

        for (int y = 0; y < qr.getSize(); y++) 
        {
            for (int x = 0; x < qr.getSize(); x++) 
            {
                if (qr.getModule(x, y)) 
                    data.push_back(255);
                else
                    data.push_back(0);
            }
        }

        int scale = 4;

        int newWidth = qr.getSize() * scale;
        int newHeight = qr.getSize() * scale;

        ImageUtil::Resize(data, qr.getSize(), qr.getSize(), scale);

        std::ofstream of;
        of.open("qr.jpg", std::ios::trunc | std::ios::binary);

        std::function<void(unsigned char)> writeCallback = [&of](unsigned char byte)
        {
            of.write((char*)&byte, 1);
        };

        if (TooJpeg::writeJpeg(writeCallback, data.data(), newWidth, newHeight, false))
        {
            of.flush();
            of.close();
            dpp::message msg(src.channel_id, "");

            msg.add_file("qr.jpg", dpp::utility::read_file("qr.jpg"));

            dpp::embed embed;
            embed.set_image("attachment://qr.jpg");
            embed.set_description("Your 2-FA QR Code.");

            msg.add_embed(embed);

            msg.add_component(component().add_component(component().set_label("Activate 2-FA").set_id("activate_twofa").set_style(component_style::cos_success)));

            if (src.interaction_event.has_value())
                src.interaction_event.value().reply(msg);
            else
                src.message_event.value().reply(msg);
        }
    }
}