default: install-packages link-config set-shell

install-packages: add-repositories
	yes | yaourt -S --needed termite infinality-bundle
	yaourt -Sy --needed --noconfirm `cat packages.txt`

add-repositories: add-infinality-key
	cat repositories.txt | sudo tee -a /etc/pacman.conf

add-infinality-key:
	sudo dirmngr &
	sleep 1
	sudo pacman-key -r 962DDE58
	sudo pacman-key --lsign-key 962DDE58

link-config:
	stow --restow `ls -d */`

set-shell:
	chsh -s `which fish`