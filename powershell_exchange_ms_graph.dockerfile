# With the official Powershell image
FROM mcr.microsoft.com/powershell

# Add Exchange Online
RUN pwsh -c "Install-Module ExchangeOnlineManagement -Scope AllUsers -Force"

# Add Microsoft Graph
RUN pwsh -c "Install-Module Microsoft.Graph -Scope CurrentUser -Force"

# Actually run the command
CMD [ "pwsh" ]

# There should be a volume, and we want to start in it
VOLUME ["/scripts"]
WORKDIR /scripts

# massive thanks to https://stackoverflow.com/a/47386146
