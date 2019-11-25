FROM python:3.7-slim-buster

RUN pip install "jupyterlab==1.2.3" --no-cache-dir

# install zsh
RUN apt-get -y update && apt-get -y install zsh curl git
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install custom requirements
WORKDIR /build
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8881

WORKDIR /workspace

CMD [ "jupyter", "lab", "--ip", "0.0.0.0", "--port", "8881", "--notebook-dir", "notebooks", "--allow-root", "--no-browser"]
