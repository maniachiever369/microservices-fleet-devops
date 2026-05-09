
# Step 1: Build stage (using a temporary image)
FROM nginx:alpine AS builder
RUN echo "<h1>Manikanta's Most Secure App</h1>" > /usr/share/nginx/html/index.html

# Step 2: Final stage (using 'Distroless' for maximum security)
FROM cgr.dev/chainguard/nginx:latest
COPY --from=builder /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html
