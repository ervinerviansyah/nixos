{ homeStateVersion, user, ... }: {
  imports = [
    ./packages
    ./modules
  ];

  home = {
    username = user;
    homeDirectory = "/home/${user}";
    stateVersion = homeStateVersion;
  };
}