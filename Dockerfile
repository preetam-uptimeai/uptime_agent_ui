# Use official nginx image as the base image
FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf

#Make sure build content is moved inside build/aiagent folder
# Copy the build output to replace the default nginx contents.
COPY ./build /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
# Expose port 80
EXPOSE 80