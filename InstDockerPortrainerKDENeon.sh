#!/bin/bash
sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y
sudo apt install docker.io -y
sudo systemctl enable --now docker
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
xhost +local:
echo " "
echo " "
echo "All done! Portrainer launched in localhost:9000"
echo " "
echo "To run container's gui apps in host:"
echo "mount    /tmp/.X11-unix/    in container and host"
printf '%s\n' "type    echo 'export DISPLAY=:0' >> /etc/bash.bashrc && export DISPLAY=:0    as root in container's terminal"
echo "Launch apps!"