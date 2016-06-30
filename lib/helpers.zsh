# Vars
export CDPLAYER_COLLECTION=""
export CDPLATER_COLLECTION_SEP=":"

# Consts
TRUE="true"
FALSE="false"

# Functions
function debug {
  if [ "x$CDPLAYER_DEBUG" = "x$TRUE" ]; then
    echo "[DEBUG] $1"
  fi
}

function die {
  local message="$1"
  echo $message
  exit 1
}

function not_implemented {
  die "Not implemented error"
}

function add_to_collection {
  debug "add collection"
  local title="$1"
  if [ "x$CDPLAYER_COLLECTION" = "x" ]; then
    export CDPLAYER_COLLECTION="$title"
  else
    new_collection=CDPLAYER_COLLECTION
    export CDPLAYER_COLLECTION=$(printf "%s%s%s" \
      "$CDPLAYER_COLLECTION" \
      "$CDPLATER_COLLECTION_SEP" \
      "$title" \
    )
  fi
  debug "updated collection: $CDPLAYER_COLLECTION"
}

function remove_from_collection {
  debug "remove collection"
  local title="$1"
  debug "updated collection: $CDPLAYER_COLLECTION"
}
