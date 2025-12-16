#define CPPHTTPLIB_OPENSSL_SUPPORT
#include "httplib.h"
#include "rapidjson/document.h"
#include "rapidjson/rapidjson.h"

#include "Config.hpp"

class ChatTranslator
{
public:
    static ChatTranslator* instance()
    {
        static ChatTranslator instance;
        return &instance;
    }


    std::string Translate(std::string language, std::string input)
    {
        std::string key = sConfig.GetStringDefault("AutoTranslate.ApiKey", "");
        if (key.empty())
            return input;
        httplib::SSLClient cli{ "api.deepl.com", 443};
        httplib::Headers headers;
        headers.insert({ "Authorization", string_format("DeepL-Auth-Key %s", key) });
        auto res = cli.Post("/v2/translate", headers, string_format("text=%s&target_lang=%s", input.c_str(), language.c_str()), "application/x-www-form-urlencoded");
        rapidjson::Document d;
        if (res.error() != httplib::Error::Success)
            return input;
        d.Parse(res.value().body.c_str());

        if (d.HasParseError())
            return input;

        auto& a = d["translations"];

        if (!a.IsArray())
            return input;

        for (rapidjson::SizeType i = 0; i < a.Size(); i++) // Uses SizeType instead of size_t
        {
            auto val = a[i]["text"].GetString();
            return val;
        }
        return input;
    }
};

#define sChatTranslator ChatTranslator::instance()