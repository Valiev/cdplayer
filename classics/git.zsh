CD_TITLE="git"

add_to_collection $CD_TITLE

function  (){
# FIXME
  command git rev-parse --is-inside-work-tree 2> /dev/null == "1"
}


function update_git_context_static
{
  typeset -A hash
  local aliases_to_set=""

  # push
  # pull
  # add
  # addp
  # clone
  # rebase
  # tag
  # commit
  # checkout
  # log
}

function update_git_context_dynamic
{

}
