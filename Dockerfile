FROM mcr.microsoft.com/playwright:v1.58.2-noble

RUN npm install -g @playwright/cli@latest

CMD ["sleep", "infinity"]
