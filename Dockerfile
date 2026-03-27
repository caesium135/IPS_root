FROM python:3.10-slim

# 安装系统依赖 (tesseract-ocr 是 pytesseract 所需)
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libtesseract-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# 复制并安装 Python 依赖
COPY backend/requirements.txt ./backend/
RUN pip install --no-cache-dir -r backend/requirements.txt

# 复制项目所有文件
COPY . .

# 暴露端口
EXPOSE 8000

# 设置工作目录并启动后端
WORKDIR /app/backend
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
