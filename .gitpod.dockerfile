FROM gitpod/workspace-full
# Install image generator
USER root
RUN apt-get update && apt-get install -y graphviz libgraphviz-dev pkg-config python3-dev
# && pyenv install 3.6.1 && pyenv global 3.6.1
RUN pyenv update
RUN pip install pipenv

ENV IP=0.0.0.0
ENV PORT=3000
