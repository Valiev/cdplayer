# Source helper methods
source "${0:h}/lib/helpers.zsh"

# CDPLAYER_COLLECTION is a list of CDs are ready to play separated by `:` like
# in $PATH variable
export CDPLAYER_DEBUG="true"
export CDPLAYER_CLASSICS_INIT_FLAG="false"

function cdplayer_chpwd {
  if [ "x$CDPLAYER_CLASSICS_INIT_FLAG" = "x$FALSE" ]; then
    debug "discovering classics collection"
    discover_classics_collection
    CDPLAYER_CLASSICS_INIT_FLAG="$TRUE"
  fi
  discover_local_bands

  for old_alias in $CDPLATER_ALIASES; do
    unalias $old_alias
    # TODO: restore conflicting aliases
  done

  for disk in $CDPLAYER_COLLECTION; do
    # check disk fits here
    for new_alias in $(disk_aliases($disk); do
      # alias
      #
    done
  done

  # TODO: unalias old aliases
  # TODO: store new aliases
  # TODO: update aliases
}

# cdplayer_play walks though the CDPLAYER_COLLECTION and finds CDs to play
function cdplayer_play {
  not_implemented
}

function discover_classics_collection {
  for disk in $(ls ${0:h}/classics/*.zsh); do
    debug "sourcing ${disk}..."
    source "$disk"
  done
}

function discover_local_bands {
  for disk in $(ls $PWD/.cdplayer.zsh); do
    debug "sourcing ${disk}..."
    source "$disk"
  done
}

chpwd_functions=(${chpwd_functions[@]} "cdplayer_chpwd")
