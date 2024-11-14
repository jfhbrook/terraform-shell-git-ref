#!/usr/bin/env bash

set -euo pipefail

RESPONSE="$( \
  echo '{"branch":null,"sha":null}' \
  | jq --arg path "${path}" \
  | jq --arg refspec "${refspec}" \
        '.path = $path | .refspec = $refspec' \
)"

BRANCH="$(git rev-parse --abbrev-ref "${refspec}")"
SHA="$(git rev-parse "${refspec})"

echo "${RESPONSE}" | jq -cM \
  --arg branch "${BRANCH}" \
  --arg sha "${SHA}" \
  '.branch = $branch | .sha = $sha'
