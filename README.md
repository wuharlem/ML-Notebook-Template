# ML-Notebook-Template
ML notebook template

## Run in Docker with Multiple Analysis Libraries
[Reference](https://github.com/jupyter/docker-stacks/tree/main/scipy-notebook)  
``$ make build``  
``$ make run``

## Run in Local

### 1. Install Packages Manager
[Reference](https://blog.kyomind.tw/python-poetry/#Poetry-%E6%98%AF%E4%BB%80%E9%BA%BC%EF%BC%9F)  
``$ pip3 install poetry``  
``$ poetry init``  
``$ poetry config virtualenvs.in-project true``  
``$ poetry env use python.  
``$ poetry shell``   

### 2. Install Notebook Kernel
``$ poetry run python -m ipykernel install --user --name <YOUR ENV NAME>``  

### 3. Launch Jupyter
We recommend using ``tmux``.  
``$ jupyter lab``  
