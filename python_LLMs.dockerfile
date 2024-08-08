FROM python-bullseye

VOLUME ["/WORKDIR"]
WORKDIR /WORKDIR

# Add Git (its Git)
# RUN apk add git tmux vim gcc cmake sqlite

# Make a python virtual environment
#run python -m venv virtenvironment
# run source virtenvironment

# Install all our python packages we want
RUN pip install --no-cache-dir --upgrade openai
RUN pip install --no-cache-dir --upgrade ollama
RUN pip install --no-cache-dir --upgrade langchain
RUN pip install --no-cache-dir --upgrade langchain_community
RUN pip install --no-cache-dir --upgrade textract

RUN pip install --no-cache-dir --upgrade chromadb
