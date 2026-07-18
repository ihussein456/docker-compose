#Specify Base Image - Blank canvas Fresh computer
FROM node:alpine

#Setup Working Directory
WORKDIR /usr/app

#Install dependencies
COPY package.json .
RUN npm install
COPY . .

#Default Command
CMD ["npm", "start"]