#include "TestController.hpp"
#include "TransferController.hpp"
#include "Config.hpp"

namespace HttpApi
{
    void RegisterControllers()
    {
        new TestController();
        new TransferController(sConfig.GetStringDefault("HttpApi.TransferKey", "Gheor"));
    }
}

