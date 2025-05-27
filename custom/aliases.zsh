#  Common commands
alias nc-drive='sudo mount -t cifs -o username=$NETWORK_USER,password=$NETWORK_PASS, //$NETWORK_HOST/shared /run/media/cypheroxide/HomeRouter'
alias upd='update'
alias fresh='source /home/cypheroxide/.zshrc'
alias mod-alias='nano /home/cypheroxide/.oh-my-zsh/custom/aliases.zsh'
alias mod-shell='sudo nano /home/cypheroxide/.zshrc'
alias mod-neo='nano /home/cypheroxide/.config/neofetch/config.conf'
alias please='sudo'
alias helpme='cht.sh --shell'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='ugrep --color=auto'
alias fgrep='ugrep -F --color=auto'
alias egrep='ugrep -E --color=auto'
alias hw='hwinfo --short'                          # Hardware Info
alias inpkg='sudo pacman -S'
alias findpkg='sudo pacman -Ss'
alias rmpkg='sudo pacman -R'
alias canbuild='paru -Ss'
alias buildit='paru -S'
alias flat-in='flatpak install'
alias flat-up='flatpak update'
alias flat-what='flatpak search'
alias fixaflat='sudo betterdiscordctl --d-install flatpak install'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias grubup="sudo update-grub"
alias ip="ip -color"
alias virtpy='python -m venv'
alias virton='source venv/bin/activate'
alias rsa-gen='ssh-keygen -t rsa -b 4096'
alias dsa-gen='ssh-keygen -t dsa '
alias ecdsa-gen='ssh-keygen -t ecdsa -b 521'
alias ed-gen='ssh-keygen -t ed25519'
alias better='betterdiscordctl --d-install flatpak install'

#  Get the error messages from journalctl
alias jctl='journalctl -p 3 -xb'


# AthenaOS Docker image
alias run-athena='sudo docker run -ti --name athena-rdp --cap-add CAP_SYS_ADMIN --cap-add IPC_LOCK --cap-add NET_ADMIN --cgroupns=host --device /dev/net/tun --shm-size 4G --sysctl net.ipv6.conf.all.disable_ipv6=0 --volume /sys/fs/cgroup:/sys/fs/cgroup --publish 23389:3389 --publish 8022:22 --restart unless-stopped docker.io/athenaos/rdp:latest'
alias enter-athena='sudo docker exec --user athena -ti athena-rdp /bin/zsh'
alias rdp-athena='remmina -c rdp://$RDP_HOST:23389'


# Docker containers
alias port-up='sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest'
alias port-agent='sudo docker run -d -p 9001:9001 --name portainer_agent --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker/volumes:/var/lib/docker/volumes -v /:/host portainer/agent:2.21.5'
alias update-web='sudo docker run --rm --volume /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower --run-once open-webui'
alias web-up='sudo docker run -d -p 9080:8080 --add-host=host.docker.internal:host-gateway -e COMFYUI_BASE_URL=http://host.docker.internal:8188/ -e ENABLE_IMAGE_GENERATION=True -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=$OLLAMA_BASE_URL --name open-webui --restart always ghcr.io/open-webui/open-webui:latest'
alias pipes-up='sudo docker run -d -p 9099:9099 --add-host=host.docker.internal:host-gateway -v pipelines:/app/pipelines --name pipelines --restart on-failure ghcr.io/open-webui/pipelines:main'
alias localai-up='curl https://localai.io/install.sh | DOCKER_INSTALL=true USE_AIO=true PORT=7070 CORE_IMAGES=true --p2p sudo sh'
alias localai-gpu='sudo docker run -p --add-host=host.docker.internal:host-gateway -p 6100:8080 --gpus all --name local-ai -ti localai/localai:latest-aio-gpu-nvidia-cuda-12'
alias localai='sudo docker run -p 6000:8080 --name local-ai -ti localai/localai:latest-aio-cpu'
alias flowise-up='sudo docker run --name flowise -p 3000:3000 --link pg-flowise:pg-flowise --env-file /home/cypheroxide/Build/Flowise/".env" flowiseai/flowise:latest'
alias comfy-up='sudo docker run -it --rm --name comfyui --network=comfyui_default -p 8188:8188 -v "$(pwd)"/storage:/home/runner -e CLI_ARGS="" universonic/comfyui'
alias autogen='sudo docker run -it --rm -p 8090:8090 -e "OPENAI_API_KEY=$OPENAI_API_KEY" autogenstudio'
alias psql='sudo docker run --name pg -p 5432:5432 -e POSTGRES_USER=cypheroxide -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -d postgres'
alias flow-pg='sudo docker run --name pg-flowise -p 3500:5432 -e POSTGRES_USER=cypheroxide -e POSTGRES_PASSWORD=$POSTGRES_PASSWORD -d postgres'
alias pgadmin='sudo docker run --name pgadmin -p 8888:80 -e PGADMIN_DEFAULT_EMAIL=$PGADMIN_EMAIL -e PGADMIN_DEFAULT_PASSWORD=$PGADMIN_PASSWORD -d dpage/pgadmin4'
alias pihole='/home/cypheroxide/.config/pihole | sh'
alias whoogle='sudo docker run --publish 5000:5000 --detach --name search-whoogle benbusby/whoogle-search:latest'
alias searxng='sudo docker run -d -p 7500:8080 -e BASE_URL=http://localhost:7500/ --name search-searxng -e INSTANCE_NAME=scout-searxng searxng/searxng'
alias clara='sudo docker run -d --restart unless-stopped -p 8069:8069 --name clara clara-osgood'
alias newhome='/home/cypheroxide/.config/newhome.sh | sh'


# Local Ai Update and Run commands
alias anythinglm='/home/cypheroxide/AnythingLLMDesktop/start | sh'
alias anything-up='curl -fsSL https://s3.us-west-1.amazonaws.com/public.useanything.com/latest/installer.sh | sh'
alias up-ollama='curl -fsSL https://ollama.com/install.sh | sh'
alias ollama-api='/home/cypheroxide/.config/ollama-api | sh'
alias llama-up='/home/cypheroxide/.config/ollama-models | sh'


# Go install and update
# (deprecated) alias get-fabric='curl -L https://github.com/danielmiessler/fabric/releases/latest/download/fabric-linux-amd64 > fabric && sudo chmod +x fabric && ./fabric --version'
alias get-fabric='go install github.com/danielmiessler/fabric@latest'
alias update-go='sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.23.3.linux-amd64.tar.gz; export PATH=$PATH:/usr/local/go/bin'
alias llamalink='~/go/bin/./llamalink'


# Archiver Tools
alias zimthis='function _zimit() { sudo docker run -v /run/media/cypheroxide/Data/kiwix:/output ghcr.io/openzim/zimit zimit --url "$1" --name "$(basename "$1" .html).zim"; }; _zimit'
alias trackthat='/usr/local/bin/trackthat'
alias gethis='git clone'
