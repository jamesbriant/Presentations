FROM node:16

# Create app directory
WORKDIR /reveal.js
RUN mkdir presentations

COPY reveal.js /reveal.js

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

CMD ["npm", "start"]