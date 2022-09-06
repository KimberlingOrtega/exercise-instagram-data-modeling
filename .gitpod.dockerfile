FROM gitpod/workspace-full
# Install image generator
USER gitpod
RUN apt-get update -q && apt-get install -yq graphviz libgraphviz-dev pkg-config python3-dev
RUN brew update && brew upgrade pyenv
# && pyenv install 3.6.1 && pyenv global 3.6.1
RUN pyenv install 3.6.1 && pyenv global 3.6.1
RUN pip install pipenv

ENV IP=0.0.0.0
ENV PORT=3000