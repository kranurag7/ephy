# Install Nix using determinate systems installer 
nix:
	curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install --no-confirm

# Install Just 
just:
	nix profile install nixpkgs#just
