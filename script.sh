#!/bin/bash

echo 'Criando os diretórios'

mkdir /desafio/publico /desafio/adm /desafio/ven /desafio/sec

echo 'Grupos de usuários'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c 'Carlos da Silva' -s /bin/bash -m -p $(openssl passwd Senhxa123) -G GRP_ADM
useradd maria -c 'Maria da Cunha' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -c 'João Carlos' -s /bin/bash -m -p $(openssl passwd Senha123) -G  GRP_ADM

echo 'Usuários do grupo GRP_ADM'

useradd debora -c 'Debora dos Santos' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -c 'Sebastiana Morais' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -c 'Roberto Andrade' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_VEN

echo 'Usuários do grupo GRP_VEN'

useradd josefina -c 'Josefina Bastos' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -c 'Amanda Moreira' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -c 'Rogerio Gaspar' -s /bin/bash -m -p $(openssl passwd Senha123) -G GRP_SEC

echo 'Usuários do grupo GRP_SEC'

echo 'Permissões dos usuários'
chown root:GRP_ADM /desafio/adm
chown root:GRP_VEN /desafio/ven
chown root:GRP_SEC /desafio/sec

chmod 770 /desafio/adm
chmod 770 /desafio/ven
chmod 770 /desafio/sec
chmod 777 /desafio/publico

echo 'Fim do script'
