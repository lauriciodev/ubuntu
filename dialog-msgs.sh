
# mensagem simples na tela.
dialog --infobox "Você está sendo hackedo pelo mestre, por favor não resista." 4 45
sleep 5
clear

#mensagem com botoes
 dialog --msgbox "mensagem" 5 49

#mensagem com input de texto;
nome=$(dialog --inputbox "Digite seu nome" 10 40 --stdout)
dialog --msgbox "nome digitado : $nome" 20 50
clear

#mensagem com input de senha
senha=$(dialog --passwordbox "Digite sua senha" 10 40 --stdout)
dialog --msgbox "senha digitada : $senha" 20 50
clear

#mensagem com input de checklist
itens=$(dialog --checklist "Escolha seu nick name" 10 40 4 \
"maria1" "maria1" OFF \
"maria2" "maria2" OFF \
"maria3" "maria3" OFF \
"maria4" "maria4" ON \
 --stdout)
dialog --msgbox "itens selecionados $itens" 20 50
clear



#mensagem com input de radio liste para selecionar apenas 1

item=$(dialog --radiolist "Escolha seu nick name" 10 40 4 \
"maria1" "maria1" OFF \
"maria2" "maria2" OFF \
"maria3" "maria3" OFF \
"maria4" "maria4" ON \
 --stdout)
dialog --msgbox "itens selecionado $item" 20 50
clear
