#the base image since its an app based on js  
FROM node

WORKDIR /app
COPY . .

#this is needed to host the output (index.html) of the Angular app
#this is needed to host the build output of the Angular app 
#since the Angular dev server will not be used (as its prod env & not dev)

RUN npm install -g http-server
EXPOSE 9999
CMD ["http-server", "--port", "9999"]`