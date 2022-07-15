---
title: "Taichi installation for Apple Silicon"
date: 2021-03-03T11:42:32+01:00
categories:
    - Guide
---

## conda env

```bash
conda create -n taichi python=3.8
```

## Install Dependencies

See [best practice using pip in a conda](https://www.anaconda.com/blog/using-pip-in-a-conda-environment)

```bash
conda activate taichi
python3 -m pip install setuptools astor pybind11 pylint # sourceinspect
python3 -m pip install pytest pytest-rerunfailures pytest-xdist yapf
python3 -m pip install GitPython coverage colorama # autograd
# install pypi packages with no whl avaiable for Apple Arm64
python3 -m pip install numpy autograd sourceinspect --compile --pre
```

## Build LLVM 10.0.0 from source 

```bash
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/llvm-10.0.0.src.tar.xz
tar xvJf llvm-10.0.0.src.tar.xz
cd llvm-10.0.0.src
mkdir build
cd build

# install to specific location
# https://llvm.org/docs/CMake.html
cmake .. \
    -DLLVM_ENABLE_RTTI:BOOL=ON \
    -DBUILD_SHARED_LIBS:BOOL=OFF \
    -DCMAKE_BUILD_TYPE=Release \
    -DLLVM_TARGETS_TO_BUILD="AArch64" \
    -DLLVM_ENABLE_ASSERTIONS=ON \
    -DCMAKE_INSTALL_PREFIX=/Users/wyq977/projects/llvm-install/10.0.0

make -j 8
make install

# Check your LLVM installation
# You should get 10.0.0
llvm-config --version
```

## Build Taichi

Installing collected packages: numpy
  WARNING: The scripts f2py, f2py3 and f2py3.8 are installed in '/Users/wyq977/.local/bin' which is not on PATH.
  Consider adding this directory to PATH or, if you prefer to suppress this warning, use --no-warn-script-location.
Successfully installed numpy-1.20.2

astor
sourceinspect
pytest-rerunfailures
pytest-xdist
yapf
GitPython
coverage
colorama
autograd

  721  brew install cmake
  723  cmake --version
  724  cmake ..
  726  cmake ..
  746  cmake ..
  747  cmake .. -DTI_WITH_CUDA=OFF -DTI_WITH_OPENGL=OFF -DTI_WITH_CC=OFF 
  763  cd cmake/
```bash
cmake .. -DTI_WITH_CUDA=OFF -DTI_WITH_OPENGL=OFF -DTI_WITH_CC=OFF -DLLVM_TARGETS_TO_BUILD="AArch64"
```

## LLVM (build from source)

```bash
wget https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/llvm-10.0.0.src.tar.xz
tar xvJf llvm-10.0.0.src.tar.xz
cd llvm-10.0.0.src
mkdir build
cd build
cmake .. -DLLVM_ENABLE_RTTI:BOOL=ON -DBUILD_SHARED_LIBS:BOOL=OFF -DCMAKE_BUILD_TYPE=Release -DLLVM_TARGETS_TO_BUILD="AArch64" -DLLVM_ENABLE_ASSERTIONS=ON

make -j 8
# install llvm in custom dir instead of /
make DESTDIR=~/Downloads/llvm-install/ install

# add this to bash_profile
# export PATH="/Users/wyq977/Downloads/llvm-install/usr/local/bin:$PATH"   
# export LLVM_DIR="/Users/wyq977/Downloads/llvm-install/usr/local/lib/cmake"

# Check your LLVM installation
llvm-config --version  # You should get 10.0.0
```

## Uninstall

* Make a CMake target: https://gitlab.kitware.com/cmake/community/-/wikis/FAQ#can-i-do-make-uninstall-with-cmake
* remove all build target:

```bash
cd build && xargs rm < install_manifest.txt
```

* Unset all env var

```bash
unset TAICHI_REPO_DIR
unset LLVM_DIR
```
