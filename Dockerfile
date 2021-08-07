FROM iprobedroid/swgoh-arena-tracker:beta-23 as builder
FROM mcr.microsoft.com/dotnet/runtime:5.0
WORKDIR /app
COPY --from=builder /app .
ENTRYPOINT ["dotnet", "SimpleTracker.dll"]

ENV DISCORD_WEB_HOOK=https://discordapp.com/...  
ENV ARENA_TYPE=FLEET
ENV ALLY_CODES_URL=http://rotbot.eu/sniper/ac-472589825065615362-fleet.json
ENV CUSTOM_MESSAGE_STATUS="%USER_ICON% `%PLAYER_NAME%` `is at %CURRENT_RANK%.` PO `in %TIME_TO_PO%`"
ENV CUSTOM_MESSAGE_CLIMB="%USER_ICON% `%PLAYER_NAME%` \<:b_up:806635916352946176\> from %PREVIOUS_RANK% to %CURRENT_RANK%. PO in %TIME_TO_PO%"
ENV CUSTOM_MESSAGE_DROP="%USER_ICON% `%PLAYER_NAME%` \<:b_down:806635586513272842\> from %PREVIOUS_RANK% to %CURRENT_RANK%. PO in %TIME_TO_PO%"
