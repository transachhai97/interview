# Bước 1: Xây dựng ứng dụng Angular với hot reload
FROM node:16 as build

# Thiết lập thư mục làm việc
WORKDIR /app

# Cài đặt Angular CLI toàn cầu
RUN npm install -g @angular/cli@15

# Copy package.json và cài đặt các dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy toàn bộ ứng dụng vào thư mục làm việc
COPY . .

# Bước 2: Cấu hình cho hot reload trong quá trình phát triển
CMD ng serve --host 0.0.0.0 --disable-host-check --poll 1
