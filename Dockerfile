FROM node:9-slim

WORKDIR /usr/src/app

#安装依赖文件
ADD package.json /usr/src/app/

RUN npm install 
#拷贝发布程序
ADD . /usr/src/app

CMD [ "npm", "start"]

EXPOSE 3000
