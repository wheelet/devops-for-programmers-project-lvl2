ansible-ping:
	ansible all -m ping

install-requirements:
	ansible-galaxy install -r ansible/requirements.yml

ansible-deploy:
	ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass
