# With the official Powershell image
FROM mcr.microsoft.com/powershell

# Add Microsoft Graph
RUN pwsh -c "Install-Module Microsoft.Graph -Scope CurrentUser"
RUN pwsh -c "Install-Module Microsoft.Graph.Beta"

# Actually run the command
CMD [ "pwsh" ]

# There should be a volume, and we want to start in it
VOLUME ["/scripts"]
WORKDIR /scripts

# massive thanks to https://stackoverflow.com/a/47386146
