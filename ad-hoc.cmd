# Check Status of nginx

ansible all -i inventory.ini -m shell -a "systemctl is-active nginx" --become
ansible all -i inventory.ini -m shell -a "systemctl is-active nginx" --limit appserver --become

# Stop nginx 

ansible all -i inventory.ini -m service -a "name=nginx state=stopped" --become

# Restart nginx

ansible all -i inventory.ini -m service -a "name=nginx state=restarted" --become

