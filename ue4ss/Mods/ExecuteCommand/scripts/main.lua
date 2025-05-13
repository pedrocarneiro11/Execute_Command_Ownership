local console = require("OBRConsole")
local C = {}

function C.ExecuteConsole(command)

    local command = "player.setownership(0x0c014fcb)"
    local UEHelpers = require("UEHelpers")
    local playerController = UEHelpers.GetPlayerController()
    local KismetSystemLibrary = StaticFindObject('/Script/Engine.Default__KismetSystemLibrary')
    ExecuteInGameThread(function() 
        if command ~= '' then
            if playerController:IsValid() then
                KismetSystemLibrary:ExecuteConsoleCommand(playerController.player, command, playerController)
            else
            print("[LuaConsoleMod]playerController invalid")
            end
        else
        print("[LuaConsoleMod]command is null")
        end
    end)
    end

return C


-- id armored shadowmere : 0x0c014fcb

-- comando : player.setownership(0x0c014fcb)
-- console.ExecuteConsole(command)
-- id armored shadowmere : 0x0c014fcb