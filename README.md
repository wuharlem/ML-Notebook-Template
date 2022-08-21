# ML-Notebook-Template
This is the template to create the ML POC/experiment project for sharing with your team.
You can choose one method to run your Jupyter.

- Running on Docker
- Running on Local with the same OS.

## Run in Docker with Multiple Analysis Libraries
- [Reference](https://github.com/jupyter/docker-stacks/tree/main/scipy-notebook)  
``$ make build``  
``$ make run``

## Run in Local

### 1. Install Packages Manager
[Reference](https://blog.kyomind.tw/python-poetry/#Poetry-%E6%98%AF%E4%BB%80%E9%BA%BC%EF%BC%9F)  
#### Environment:
    - Python 3.9
    - OS: macOS m1
#### Command
``$ pip3 install poetry``  
``$ poetry config virtualenvs.in-project true``  
``$ poetry install``  
``$ poetry shell`` or ``source $(poetry env info --path)/bin/activate``  

### 2. Install Notebook Kernel
``$ poetry run python -m ipykernel install --user --name <YOUR ENV NAME>``  

### 3. Launch Jupyter
We recommend using ``tmux``.  
``$ jupyter lab``  
