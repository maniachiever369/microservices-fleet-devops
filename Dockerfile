# Using a 'Hardened' Bitnami image which is more secure than standard Nginx
FROM bitnami/nginx:1.25

# Bitnami images run as non-root users (A key UK security requirement!)
USER 1001

# Add your custom message
RUN echo "<h1>Hello from Manikanta's Secure DevOps Project!</h1>" > /opt/bitnami/nginx/html/index.html

# Expose port 8080 (Bitnami uses 8080 instead of 80 for security)
EXPOSE 8080
