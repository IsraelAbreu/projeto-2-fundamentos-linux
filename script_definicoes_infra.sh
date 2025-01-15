#!/bin/bash

echo "Criando diretórios padrões na raiz do sistema..."

cd / && mkdir -v  publico adm ven sec && echo "Diretórios criados com sucesso!"

echo "Iniciando Criação de grupos"

groupadd GRP_ADM && echo "Grupo da administracao criado"
groupadd GRP_VEN && echo "Grupo de vendas criado"
groupadd GRP_SEC && echo "Grupo da secretaria criado"

echo "Definindo permissões de grupos em diretórios da raiz"
chown root:GRP_ADM /adm && echo "permissao de dono GRP_ADM definida"
chown root:GRP_VEN /ven && echo "permissao de dono GRP_VEN definida"
chown root:GRP_SEC /sec && echo "permissao de dono GRP_SEC definida"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Permissoes de grupos e diretório aplicadas"

echo "Iniciando criações de usuários"


useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM &&  echo "usuario carlos criado"

useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM && echo "usuario joao criado"

useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_ADM && echo "usuario Maria criado"

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN && echo "usuario Debora criado"

useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN && echo "usuario sebastiana criado"

useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_VEN && echo "usuario Roberto criado"

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC && echo "usuario Josefina criado"

useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC && echo "usuario Amanda criado"

useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -apr1 123456) -G GRP_SEC && echo "usuario Roberto criado"
