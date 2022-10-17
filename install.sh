## Prerequisites
# 1. cmake
# 2. make
# 3. CUDA if using GPU

tar -xf gromacs-2022.3.tar.gz # put your downloaded gromacs file here which should have the extension .tar.gz

cd gromacs-2022.3
mkdir build
cd build

mkdir $HOME/gmx-2022 # this is the installation directory. Please change it if needed.

# without GPU. Comment this if using GPU
cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/gmx-2022 -DGMX_GPU=OFF -DGMX_BUILD_OWN_FFTW=ON

# with GPU. Uncomment the line below if using GPU and commnent the above line.
# cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/gmx-2022 -DGMX_GPU=ON -DGMX_BUILD_OWN_FFTW=ON

make -j 4 && make install

## making gromacs available from anywhere
echo 'alias gmx="$HOME/gmx-2022/bin/gmx"' >> ~/.bash_aliases
source ~/.bashrc
