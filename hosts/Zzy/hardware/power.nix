{ ... }:

{
  
  powerManagement.enable = true;

  services.power-profiles-daemon.enable = false;

  services.tlp = {
    enable = true;

    pd.enable = true;

    settings = {
      TLP_AUTO_SWITCH = 2;

      TLP_PROFILE_AC = "PRF";
      TLP_PROFILE_BAT = "BAL";
    
	  START_CHARGE_THRESH_BAT0 = 30; 
      STOP_CHARGE_THRESH_BAT0 = 80;

	};
  };
}
