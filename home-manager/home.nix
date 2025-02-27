{ homeStateVersion, user, ... }: {
  imports = [
    ./packages
    ./modules
  ];

  home = {
    username = "ervin";
    homeDirectory = "/home/ervin";
    stateVersion = "24.11";
  };
}