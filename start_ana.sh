#!/bin/bash
. /reg/g/psdm/bin/sit_setup.sh ana-current
export PYTHONPATH=$PYTHONPATH:/reg/common/package/python/2.7.2-rhel5/lib/python2.7/site-packages:/reg/g/pcds/pds/pyca

if [ $1 = "-s" ]; then
    /reg/common/package/openmpi/openmpi-1.8.5/install/bin/mpirun -n 3 --hostfile hostfile python LQ27_mpi_driver.py
else
    /reg/common/package/openmpi/openmpi-1.8.5/install/bin/mpirun -n 6 python LQ27_mpi_driver.py
fi
