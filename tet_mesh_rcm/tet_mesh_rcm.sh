#!/bin/bash
#
gfortran -c -g tet_mesh_rcm.f90 >& compiler.txt
if [ $? -ne 0 ]; then
  echo "Errors compiling tet_mesh_rcm.f90"
  exit
fi
rm compiler.txt
#
gfortran tet_mesh_rcm.o
if [ $? -ne 0 ]; then
  echo "Errors linking and loading tet_mesh_rcm.o"
  exit
fi
rm tet_mesh_rcm.o
#
chmod ugo+x a.out
mv a.out ~/bin/$ARCH/tet_mesh_rcm
#
echo "Executable installed as ~/bin/$ARCH/tet_mesh_rcm"
