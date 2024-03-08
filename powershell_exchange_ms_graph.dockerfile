FROM mcr.microsoft.com/powershell


# Add Exchange Online
RUN pwsh -c "Install-Module ExchangeOnlineManagement -Scope AllUsers -Force"

# Add Microsoft Graph
RUN pwsh -c "Install-Module Microsoft.Graph -Scope CurrentUser -Force"

# Actually do it?
CMD [ "pwsh" ]



# massive thanks to https://stackoverflow.com/a/47386146
# I honestly have no clue what's going on with the pwsh & CMD [ "pwsh" ]
