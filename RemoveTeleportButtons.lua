--
-- RemoveTeleportButtons
--
-- @author  nilBrain
-- @date    04/01/20

RemoveTeleportButtons = {
	info = {
        Author = "nilBrain",
        buildID = "04012020:0317.47.A",
        title = " RemoveTeleportButtons",
        notes = " Remove Teleport Buttons in IngameMenu",
        date = " 04.01.2020",
	}
};

print((" ++ %s V.%s (by %s)"):format(RemoveTeleportButtons.info.title, RemoveTeleportButtons.info.buildID, RemoveTeleportButtons.info.Author));

function RemoveTeleportButtons:loadMap(mapFilename)
    g_currentMission.inGameMenu.pageMapOverview.buttonVisitPlace:setDisabled(true);
    g_currentMission.inGameMenu.pageMapOverview.buttonEnterVehicle:setDisabled(true);
end;

addModEventListener(RemoveTeleportButtons);