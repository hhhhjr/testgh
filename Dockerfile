# 设置基础镜像
FROM node:14.17.0-alpine

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json文件到工作目录
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 将项目文件复制到工作目录
COPY . .

# 构建项目
RUN npm run build

# 暴露容器的端口
EXPOSE 80

# 运行项目
CMD [ "npm", "run", "dev" ]
