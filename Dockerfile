FROM mcr.microsoft.com/appsvc/staticappsclient:stable
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]

WORKDIR /app
COPY ./ /app

RUN apt-get update -y
RUN apt-get install -y libsecret-1-dev

  #  ENV NODE_VERSION=15.3.0
  #  RUN apt-get install -y curl
  #  RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
  #  ENV NVM_DIR=/root/.nvm
  #  RUN . "$NVM_DIR/nvm.sh" && nvm install ${NODE_VERSION}
  #  RUN . "$NVM_DIR/nvm.sh" && nvm use v${NODE_VERSION}
  #  RUN . "$NVM_DIR/nvm.sh" && nvm alias default v${NODE_VERSION}
  #  ENV PATH="/root/.nvm/versions/node/v${NODE_VERSION}/bin/:${PATH}"
  #  RUN node --version
  #  RUN npm --version

  #  RUN apt-get update \
  #      && apt-get install -y wget gnupg \
  #      && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - \
  #      && sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' \
  #      && apt-get update \
  #      && apt-get install -y google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 \
  #        --no-install-recommends \
  #      && rm -rf /var/lib/apt/lists/*

  #  ENV CHROME_BIN=/usr/bin/chromium-browser

