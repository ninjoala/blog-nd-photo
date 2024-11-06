# Use a Node.js version 18 or higher
FROM node:18-alpine

WORKDIR /app

# Install git for any git dependencies
RUN apk add --no-cache git

COPY package.json .

# Copy all files except those in .dockerignore
COPY . .

# Enable Corepack and use a specific version of Yarn
RUN corepack enable && corepack prepare yarn@stable --activate && yarn set version 3.3.0 && yarn install && yarn check --verify-tree

RUN yarn build

CMD ["yarn", "run", "start"]
