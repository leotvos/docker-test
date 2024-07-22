# 使用官方Python基础镜像，这里选择了一个轻量级的Python环境  
# 但实际上，对于仅打印Hello, World!的任务，使用任何基础镜像（如alpine）都是可以的  
# 为了简单起见，这里仍然使用Python镜像，因为Python内置了打印功能  
FROM python:3.8-slim  
  
# 设置工作目录（可选，但在这个简单的例子中，我们不需要它）  
# WORKDIR /app  
  
# 由于我们只是打印一条消息，所以不需要复制任何文件到镜像中  
# COPY . /app （这行代码在这个Dockerfile中是多余的）  
  
# 当容器启动时执行的命令  
CMD ["python", "-c", "print('Hello, World!')"]  
  
# 注意：在这个例子中，我们并没有真正安装Python应用或库，  
# 因为我们只是简单地使用Python的命令行功能来打印一条消息。  
# 如果你想要构建一个更复杂的Python应用镜像，你可能需要  
# 复制你的Python代码到镜像中，并安装必要的依赖。