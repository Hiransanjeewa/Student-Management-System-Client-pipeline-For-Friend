# Fetching the latest node image on alpine linux
FROM node:alpine AS development

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /app

# Copying package.json and package-lock.json
COPY package.json package-lock.json /app/

# Installing dependencies
RUN npm install
RUN npm install react-router-dom


# Copying all the files in our project
COPY . .

EXPOSE 5173
# Starting our application
CMD npm run dev

