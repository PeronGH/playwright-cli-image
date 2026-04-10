FROM node:lts-slim

RUN npm install -g @playwright/cli@latest

RUN PW_CORE=$(npm ls -g playwright-core --parseable) \
    && rm -rf "$PW_CORE" \
    && npm install -g patchright-core@latest \
    && ln -s /usr/local/lib/node_modules/patchright-core "$PW_CORE"

RUN npx playwright install --with-deps chrome

COPY cli.config.json /.playwright/cli.config.json

CMD ["sleep", "infinity"]
