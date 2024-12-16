# Unitree DRL


## 0. clone this repository with recursive command
```
cd <your workspace>
git cloone --recursive https://github.com/Wataru-Oshima-Tokyo/unitree_drl.git
```

## 1. run install_python3.8.sh
```
cd <this repository>/bash
./install_python3.8.sh
```
## 2. create virtual environment with python3.8
```
cd <this repository>
mkdir venv
python3.8 -m venv ./venv
```

## 3. activate venv and run install_dependencies.sh
```
cd <this repository>
source venv/bin/activate
cd bash
./install_dependencies.sh <cuda version>
ex) ./install_dependencies.sh 11
```

## 4. Try running an example in isaacgym
```
cd <this repository>/isaacgym/python/examples 
python 1080_balls_of_solitude.py
```