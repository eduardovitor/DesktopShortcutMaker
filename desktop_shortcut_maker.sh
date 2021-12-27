#!/bin/bash



function Help(){
  echo "-h: help about this script"
  echo "-n: application name"  
  echo "-i: path to application's icon"
  echo "-e: path to application executable"
  echo "-t: true or false to run on terminal"
  echo "-c: application categories"       
}
function create_desktop_file(){
    printf "[Desktop Entry]\nEncoding=UTF-8\nVersion=1.0\nType=Application\nCategories=${1}\nTerminal=${2}\nExec=${3}\nName=${4}\nIcon=${5}"
}

while getopts n:i:e:t:c:h flag
        do
          case "${flag}" in
              h) Help
                 exit
                 ;;
              n) application_name=${OPTARG};;
              i) icon=${OPTARG};;
              e) exec=${OPTARG};;
              t) terminal=${OPTARG};;
              c) category=${OPTARG};;  
          esac
        done
   create_desktop_file ${category} ${terminal} ${exec} ${application_name} ${icon} > ${application_name}.desktop
   mv ${application_name}.desktop /usr/share/applications
