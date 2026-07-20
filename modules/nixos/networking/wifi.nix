{ lib, ... }:

{

  networking = {
    networkmanager.wifi.backend = "iwd";
    wireless = {
	  iwd = {
	    enable = true;
		settings = {
          General = {
            AddressRandomization = "network";
			EnableNetworkConfiguration = false;
		  };
	 	  Settings = {
            AutoConnect = true; 
		  };
		};
	  };
	};
  };

}
