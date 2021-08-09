FROM iprobedroid/swgoh-arena-tracker:beta-24 as builder

FROM mcr.microsoft.com/dotnet/runtime:5.0
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "SimpleTracker.dll"]

ENV DISCORD_WEB_HOOK=https://discord.com/api/webhooks/874228952258998334/tLPfyjfDzGCv8XVF1h4KU5Eeub3wXKPOz4qje6f4BakBR-rxxjF-aGd7ANSeInwz6yn4 
        ARENA_TYPE=FLEET \
        ALLY_CODES_URL=http://rotbot.eu/sniper/ac-531528031177670668-fleet.json  \
        CUSTOM_MESSAGE_STATUS="%USER_ICON% `%PLAYER_NAME% is at %CURRENT_RANK%.` PO `in %TIME_TO_PO%`" \
        CUSTOM_MESSAGE_CLIMB="<:b_up:321321321> `%PLAYER_NAME%` %USER_ICON% **%PREVIOUS_RANK% <:r_up:987654421> %CURRENT_RANK%** <:crystals:88899955t> %TIME_TO_PO% %TAG_ON_CLIMB% [swgoh](<https://swgoh.gg/p/%ALLY_CODE%/>)" \
        CUSTOM_MESSAGE_DROP="<:b_down:123123123> `%PLAYER_NAME%` %USER_ICON% **%CURRENT_RANK% <:l_down:123453789> %PREVIOUS_RANK%** <:crystals:88899955t> %TIME_TO_PO% %TAG_ON_DROP% [swgoh](<https://swgoh.gg/p/%ALLY_CODE%/>)" \
        DISABLE_STATUS_MESSAGE=TRUE
