function autoauth(player_id)
    if isAuthorized(player_id) then
        server.command("?add_auth ".. steam_id)
    else
        server.announce("Auto-Auth", "Player with Player ID " .. player_id .. " is not authorized.")
    end
end

-- Register the event handler
server.on("playerJoin", autoauth)
