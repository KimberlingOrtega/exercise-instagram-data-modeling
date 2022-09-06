FROM gitpod/workspace-full:2022-06-20-19-54-55
# Install image generator
USER gitpod
RUN sudo apt-get update \ 
 && sudo apt-get install -y \ 
 graphviz libgraphviz-dev pkg-config python3-dev
 
RUN pyenv update && \ 
 pyenv install 3.6.1 && \
 pyenv global 3.6.1
 
RUN pip install pipenv

ENV IP=0.0.0.0
ENV PORT=3000