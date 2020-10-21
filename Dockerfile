FROM mcr.microsoft.com/appsvc/staticappsclient:stable
COPY entrypoint.sh /entrypoint.sh
RUN apt-get update -y
RUN apt-get install -y libsecret-1-dev
ENTRYPOINT ["sh", "/entrypoint.sh"]