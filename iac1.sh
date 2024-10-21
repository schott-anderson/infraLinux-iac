#! /bin/bash

echo "Criando os diretórios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando os grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando os usuários"
useradd carlos -c"Carlos" -m -s/bin/bash -p$(openssl passwd senha123) -G GRP_ADM
useradd maria -c"Maria" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM
useradd joao -c"Joao" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_ADM

useradd debora -c"Debora" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN
useradd sebastina -c"Sebastina" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN
useradd roberto -c"Roberto" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_VEN

useradd josefina -c"Josefina" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC
useradd amanda -c"Amanda" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c"Rogerio" -m -s /bin/bash -p$(openssl passwd senha123) -G GRP_SEC

echo "alterando os responsaveis pelos diretórios..."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "alterando as pemissões ..."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico

echo "alteracoes realizadas ..."
