# base img 

# Use a smaller base image, upgrade pip first and set PIP config
FROM python:3.7
WORKDIR /app

# Copy only requirements first to leverage layer cache
COPY requirements.txt ./

# Prevent using pip cache inside Docker; set default timeout and disable version check
ENV PIP_NO_CACHE_DIR=1
ENV PIP_DEFAULT_TIMEOUT=120
ENV PIP_DISABLE_PIP_VERSION_CHECK=1

# Upgrade pip and install packages with retries and increased timeout to mitigate network timeouts
RUN python -m pip install --upgrade pip setuptools wheel \
	&& pip --no-cache-dir install --retries 5 --timeout $PIP_DEFAULT_TIMEOUT -r requirements.txt

# Copy project files only after installing requirements (caching)
COPY . /app
# port
EXPOSE 8501

# command
CMD [ "streamlit","run","./app.py" ]