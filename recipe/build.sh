set -ex

# https://github.com/constantinpape/affogato/pull/26
rm -rf cmake

mkdir -p build
cd build

cmake                                 \
    ${CMAKE_ARGS}                     \
    -DPython_EXECUTABLE=${PYTHON}     \
    ..

make -j${CPU_COUNT}
make install
