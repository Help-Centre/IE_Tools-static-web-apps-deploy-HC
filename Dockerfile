FROM mcr.microsoft.com/appsvc/staticappsclient:stable
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
RUN apt-get update -y
RUN apt-get install -y libsecret-1-dev
RUN apk add chromium
WORKDIR /app
ENV CHROME_BIN=/usr/bin/chromium-browser
