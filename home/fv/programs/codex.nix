{ pkgs, ... }:

{

  programs.codex = {
    enable = true;
	enableMcpIntegration = true;
	settings = {
      model = "gpt-5.5";
	  approval_policy = "on-request";
	  web_search = "live";
	  model_reasoning_effort = "medium";
	  memories = "true";
	};
  };

}
