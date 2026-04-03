FROM node:lts-slim

RUN npm install -g @playwright/cli@latest
RUN npx playwright install --with-deps chrome

CMD ["sleep", "infinity"]
