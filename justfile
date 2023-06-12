alias ark := arkade 
alias hx := helix
alias rc := bashrc


# list all the recepies 
default:
	@just --list

# Install Helix using Nix 
helix:
	nix profile install nixpkgs#helix

# Install arkade 
arkade:
	curl -sLS get.arkade.dev | sudo sh

# Install Go
go:
	sudo ark s i go
	echo 'export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin' >> ~/.bashrc
	echo 'export GOPATH=$HOME/go/' >> ~/.bashrc

# get gopls 
gopls:
	go get golang.org/x/tools/gopls@latest

# Install Docker 
docker:
	curl -sLS get.docker.com | sudo sh
