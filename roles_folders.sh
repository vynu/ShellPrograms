#!/bin/sh

create_sub_folders()
{

mkdir -p $PWD/defaults
mkdir -p $PWD/files
mkdir -p $PWD/handlers
mkdir -p $PWD/meta
mkdir -p $PWD/tasks
mkdir -p $PWD/templates
mkdir -p $PWD/vars
}

### main 
parent="Roles/roles"
mkdir -p $parent && cd $parent
if [ "$#" -lt 1 ]; then
    echo "Illegal number of parameters"
else
for stuff in "$@" ;
 do
   mkdir -p $stuff && cd $stuff 
   create_sub_folders $stuff
   cd ..  
done
fi 
