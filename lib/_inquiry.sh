#!/bin/bash
 print_banner
 printf "${WHITE} 💻 Digite o domínio:${GRAY_LIGHT}"
 printf "\n\n"
 read -p "> " domain

get_frontend_url() {
  print_banner
  frontend_url = "web.${domain}" 
}

get_backend_url() {
  backend_url =  "api.${domain}"
}

get_admin_frontend_url() {
   admin_frontend_url =  "admin.${domain}"
}


get_urls() {
  
  get_frontend_url
  get_backend_url
  get_admin_frontend_url
}

software_update() {
  
  frontend_update
  backend_update
  admin_frontend_update
}

inquiry_options() {
  
  print_banner
  printf "${WHITE} 💻 O que você precisa fazer?${GRAY_LIGHT}"
  printf "\n\n"
  printf "   [1] Instalar\n"
  printf "   [2] Atualizar\n"
  printf "\n"
  read -p "> " option

  case "${option}" in
    1) get_urls ;;

    2) 
      software_update 
      exit
      ;;

    *) exit ;;
  esac
}

