# ML-Notebook-Template
This is the template to create the ML POC/experiment project for sharing with your team.
You can choose one method to run your Jupyter.

- Running on Docker
- Running on Local with the same OS.

## Run in Docker with Multiple Analysis Libraries
- [Reference](https://github.com/jupyter/docker-stacks/tree/main/scipy-notebook)  

#### Command
``$ make build``  
``$ make run PORT="<YOUR PORT>"``

## Run in Local

### 1. Install Packages Manager
[Reference](https://blog.kyomind.tw/python-poetry/#Poetry-%E6%98%AF%E4%BB%80%E9%BA%BC%EF%BC%9F)  
#### Command
``$ pip3 install poetry``  
``$ make install``  
``$ source $(poetry env info --path)/bin/activate``  

### 2. Install Notebook Kernel
1. ``$ poetry add ipykernel``
2. ``$ python -m ipykernel install --user --name <ENV NAME>``

### 3. Launch Jupyter
1. Run in Visual Studio
2. ``$ jupyter lab``  
