{ ... }:

{
  imports = [
    ./manager.nix
	./wifi.nix
	./dns.nix
    ./firewall.nix
  ];
}
