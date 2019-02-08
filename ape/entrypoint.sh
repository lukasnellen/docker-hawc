#! /bin/sh

eval $(${APE} sh externals)

if [ -n "${SCL_ENABLE}" -a -d "/opt/rh" ]; then
     exec scl enable ${SCL_ENABLE} "$*"
else
    exec "$@"
fi
