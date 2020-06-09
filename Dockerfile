# Indicates that the windowsservercore image will be used as the base image.
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Metadata indicating an image maintainer.
LABEL maintainer="talkdeepak@gmail.com"

# Uses dism.exe to install the IIS role.
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart

# Creates an HTML file and adds content to this file.
RUN echo "Hello World - Dockerfile from Deepak" > c:\inetpub\wwwroot\index1.html

# #Expose port 80
EXPOSE 80

# Sets a command or process that will run each time a container is run from the new image.
CMD [ "cmd" ]