#!/usr/bin/env bash

set -euo pipefail

if [[ "$NORM_GLOBAL_ALLOWED" == "true" ]]; then
   output=$(norminette $NORM_PATHS || true)
   echo "$output"
   if grep -qE ".+\.[ch]: Error!|^Error:" <<< "$output"; then
      exit 1
   fi
   exit 0
else
    norminette $NORM_PATHS
fi
