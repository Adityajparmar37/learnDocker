FROM node

COPY package.json package.json
COPY package-lock.json package-lock.json

# install npm package only if there is a change in package.json or package-lock.json
RUN npm install

COPY .env .env
COPY server.js server.js

#COPY . . rather then copying one by one copy the working directory
# COPY . .

ENTRYPOINT [ "node", "server.js" ]