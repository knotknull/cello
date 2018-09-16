## set env
# eval $(ssh-agent -s) && ssh-add ~/fabric/fabric_key.pem
# export AWS ....

## apply
ansible-playbook -vv -e "mode=apply env=hack_fab_aws cloud_type=aws" provcluster.yml
ansible-playbook -i ./vars/runhosts -vv -e "mode=apply env=hack_fab_aws env_type=flanneld" initcluster.yml
ansible-playbook -i ./vars/runhosts -vv -e "mode=apply env=hack_fab_bc env_type=compose" setupfabric.yml
# ansible-playbook -i ./vars/runhosts -vv -e "mode=apply env=hack_bc networkname=carauction-network" upgradecomposer.yml
ansible-playbook -i ./vars/runhosts -vv -e "mode=verify env=hack_fab_bc" verify.yml
