{ homeStateVersion, user, ... }: {
  imports = [
    ./packages
    ./modules
  ];

  home = {
    username = user;
    homeDirectory = "/home/${toString user}";
    stateVersion = homeStateVersion;
  };
}