#!/bin/bash

echo "!you need to have instaled ansible already."

git_yaml="https://raw.githubusercontent.com/iurietopor/git-configuration/main/git-config.yaml"
git_j2="https://github.com/iurietopor/git-configuration/raw/main/it-basic-gitconfig.j2"

curl -LJO "$git_yaml"
curl -LJO "$git_j2"

ansible-playbook git-config.yaml --extra-vars "email=name.surname@domain.com" -K