# Use a lightweight web server as our base
FROM nginx:1.25-alpine

# Add a label for your professional profile
LABEL maintainer="manikanta-kumar"

# Create a custom landing page for your project
RUN echo "<h1>Hello from Manikanta's DevOps Project!</h1>" > /usr/share/nginx/html/index.html

# Open port 80 for web traffic
EXPOSE 80

