
# Use lightweight Nginx to serve the website
FROM nginx:alpine

# Remove the default Nginx page
# RUN rm -rf /usr/share/nginx/html/*

# Copy the portfolio website into Nginx
COPY . /usr/share/nginx/html

# Expose the web server port
# EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]



# kubectl rollout restart deployment/portfolio-deployment -n portfolio-namespace
# kubectl rollout status deployment/portfolio-deployment -n portfolio-namespace