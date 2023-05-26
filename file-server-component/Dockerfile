FROM node:18
ENV NODE_OPTIONS --openssl-legacy-provider
RUN mkdir -p /usr/src/app
RUN mkdir /usr/src/app/fastify
WORKDIR /usr/src/app/fastify
COPY fastify-files-backend/package.json /usr/src/app/fastify
COPY fastify-files-backend/package-lock.json /usr/src/app/fastify
RUN npm install
COPY fastify-files-backend/. /usr/src/app/fastify
RUN mkdir /usr/src/app/react-admin
WORKDIR /usr/src/app/react-admin
COPY react-admin-frontend/package.json /usr/src/app/react-admin
COPY react-admin-frontend/package-lock.json /usr/src/app/react-admin
RUN npm install
COPY react-admin-frontend/. /usr/src/app/react-admin
COPY startup.sh /startup.sh
COPY startup-fastify.sh /startup-fastify.sh
COPY startup-react-admin.sh /startup-react-admin.sh
RUN chmod 744 /startup.sh
CMD ["/startup.sh"]
