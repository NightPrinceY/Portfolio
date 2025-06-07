FROM nginx:alpine

# Set working directory (optional for this case)
WORKDIR /usr/share/nginx/html

# Copy website files to the default nginx HTML folder
COPY . /usr/share/nginx/html

# Remove default nginx site config
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose the port your nginx.conf is listening on
EXPOSE 8000
