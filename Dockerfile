FROM node:lts-slim

RUN npm install -g @playwright/cli@latest && npx playwright install --with-deps chrome

CMD ["sleep", "infinity"]
