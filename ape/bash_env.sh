# -*-shell-script-*-
# Set up env when using non-interactive bash
# e.g., CircleCI, invocation of command in bash

eval $(${APE} sh externals)

if [ -n "${SCL_ENABLE}" -a -d "/opt/rh" ]; then
    source scl_source enable ${SCL_ENABLE}
fi
