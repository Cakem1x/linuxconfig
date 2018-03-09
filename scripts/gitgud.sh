#! /usr/bin/bash

# Datastructure for git_author
declare -A users=( ["cakemix_name"]="Cakemix" ["cakemix_email"]="mholoch@gmail.com" )
# Sets environment variables for git's author name and email.
# E.g. useful when ssh'ed on a system as user that is used by multiple people.
git_author() {
  export GIT_AUTHOR_NAME=${users[${1}_name]}
  echo "Set GIT_AUTHOR_NAME to ${GIT_AUTHOR_NAME}"
  export GIT_AUTHOR_EMAIL=${users[${1}_email]}
  echo "Set GIT_AUTHOR_EMAIL to ${GIT_AUTHOR_EMAIL}"
}
