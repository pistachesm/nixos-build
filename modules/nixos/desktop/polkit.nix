{ pkgs, config, ... }:

{

  security.polkit = {
    enable = true;
	
	extraConfig = ''
	  # Policy to ask for authentication 
	  polkit.addAdminRule(function(action, subject) {
	  return ["unix-group:wheel"]; });
	'';
  };

}
