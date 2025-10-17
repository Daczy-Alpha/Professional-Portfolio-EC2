FROM nginx:alpine
RUN sudo dnf update -y
RUN sudo rm -rf /usr/share/nginx/html/*
WORKDIR /usr/share/nginx/html
COPY . /usr/share/nginx/html
RUN sudo chown -R nginx:nginx /usr/share/nginx/html
EXPOSE 5000
CMD ["nginx", "-g", "daemon off;"   ]