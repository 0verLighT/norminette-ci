#!/bin/bash

if [[ "$NORM_GLOBAL_ALLOWED" == "true" ]]; then
     ( norminette $NORM_PATHS || true ) | grep -E ".+\.[ch]: Error\!|^Error:" && exit 1 || exit 0
else
    norminette $NORM_PATHS
fi