{ ... }:

{

  hardware.bluetooth = {
	enable = true;
	powerOnBoot = false;
	settings = {
	  General = {
		Experimental = true;
		FastConnectable = true;
	    Enable = "Source,Sink,Media,Socket";
	  };
	};
  };

}
