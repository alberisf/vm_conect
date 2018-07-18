#!/bin/bash
# Script para conectar nas vms do Google Cloud

conectar() {

    case $opcao in
        1) ip="23.251.156.225" ;;
        2) ip="35.193.186.134";;
        3) ip="35.229.73.61" ;;
        4) ip="35.225.206.217" ;;
        *) echo "Opção inválida." ; exit ;;
    esac

    echo "conectando na instância.............";
    ssh -i /home/alberis/.ssh/id_rsa alberis@$ip
}

#echo -e '\e[0;44m'
echo "-----------------------------------------------------";
echo "Em qual instância você deseja se conectar?";
echo "1. sistemas-pmt";
echo "2. wordpress-producao";
echo "3. Gitlab";
echo "4. Gprojeto";
echo
echo -n "Escolha uma opção: ";
read opcao

conectar opcao