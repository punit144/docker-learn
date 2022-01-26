#!/bin/bash
#--------Spinning up container from new built images
echo "\e[1;93m=> Spinning up Containers from newly built images \e[0m\n"
docker run -it --privileged --name "ansible-learn-u14" -d -p 8001:80 -p 5001:22 myubuntu14
docker run -it --privileged --name "ansible-learn-u16" -d -p 8002:80 -p 5002:22 myubuntu16
docker run -it --privileged --name "ansible-learn-u18" -d -p 8003:80 -p 5003:22 myubuntu18
docker run -it --privileged --name "ansible-learn-u20" -d -p 8004:80 -p 5004:22 myubuntu20
docker run -it --privileged --name "ansible-learn-deb9" -d -p 8005:80 -p 5005:22 mydeb9
docker run -it --privileged --name "ansible-learn-deb10" -d -p 8006:80 -p 5006:22 mydeb10
docker run -it --privileged --name "ansible-learn-c6" -d -p 8007:80 -p 5007:22 mycentos6
docker run -it --privileged --name "ansible-learn-c7" -d -p 8008:80 -p 5008:22 mycentos7
docker run -it --privileged --name "ansible-learn-c8" -d -p 8009:80 -p 5009:22 mycentos8
docker run -it --privileged --name "ansible-learn-oel6" -d -p 8010:80 -p 5010:22 myoel6
docker run -it --privileged --name "ansible-learn-oel7" -d -p 8011:80 -p 5011:22 myoel7
docker run -it --privileged --name "ansible-learn-oel8" -d -p 8012:80 -p 5012:22 myoel8
sleep 1
echo "\e[1;92m-----Containers are successfully Deployed----- \e[0m\n"
echo "\e[1;93m=> Activating Ansible Virtual Environment & Pinging Remote Containers \e[0m\n"
source /home/devops/scripts/venv_p2/bin/activate
sleep 1
cd /home/devops/scripts/ansible-learn/staging/
ansible -m ping -i .hosts all
echo "\e[1;92m-----Script Completed Successfully----- \e[0m\n"

