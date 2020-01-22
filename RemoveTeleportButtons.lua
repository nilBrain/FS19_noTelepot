--
-- RemoveTeleportButtons
--
-- @author  nilBrain
-- @date    22/01/20
-- Changelog:
--		
-- 	v0.1.0.0 (04.01.2020 03:17):
-- 		- initial fs19
--
-- 	v1.0.0.0 (22.01.2020 22:25):
-- 		- adaptations for the Modhub

RemoveTeleportButtons = {
	info = {
        Author = "nilBrain",
        buildID = "22012020:2230.47.A",
        title = " RemoveTeleportButtons",
        notes = " Remove Teleport Buttons in IngameMenu",
        date = " 22.01.2020",
	}
};


function RemoveTeleportButtons:loadMap(mapFilename)
	InGameMenuMapFrame.onClickVisitPlace = function() return; end;
	InGameMenuMapFrame.onClickEnterVehicle = function() return; end;
    
    g_currentMission.inGameMenu.pageMapOverview.buttonVisitPlace:setDisabled(true);
    g_currentMission.inGameMenu.pageMapOverview.buttonEnterVehicle:setDisabled(true);
end;

addModEventListener(RemoveTeleportButtons);