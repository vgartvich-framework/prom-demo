FROM ubuntu:focal AS build

RUN apt update && apt install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt update && apt install -y nodejs
RUN npm install -g yarn
RUN apt install -y git openssh-client bash wget
RUN yarn install

COPY . .

ENTRYPOINT ["yarn"]

CMD ["start"]

