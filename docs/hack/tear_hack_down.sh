ansible-playbook -i ./vars/runhosts -vv -e "mode=destroy env=hack_fab_bc env_type=compose" setupfabric.yml
ansible-playbook -i ./vars/runhosts -vv -e "mode=destroy env=hack_fab_aws env_type=flanneld" initcluster.yml
ansible-playbook -vv -e "mode=destroy env=hack_fab_aws cloud_type=aws" provcluster.yml
