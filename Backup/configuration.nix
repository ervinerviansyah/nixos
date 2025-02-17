# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Jakarta";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "id_ID.UTF-8";
    LC_IDENTIFICATION = "id_ID.UTF-8";
    LC_MEASUREMENT = "id_ID.UTF-8";
    LC_MONETARY = "id_ID.UTF-8";
    LC_NAME = "id_ID.UTF-8";
    LC_NUMERIC = "id_ID.UTF-8";
    LC_PAPER = "id_ID.UTF-8";
    LC_TELEPHONE = "id_ID.UTF-8";
    LC_TIME = "id_ID.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Display Manager (Pilih Salah Satu)
  services.xserver.displayManager.gdm.enable = true;
  services.displayManager.sddm.enable = false;
  services.xserver.displayManager.lightdm.enable = false;
  
  # Desktop Environment (Pilih Salah Satu)
  services.xserver.desktopManager.gnome.enable = true;
  services.desktopManager.plasma6.enable = false;
  services.xserver.desktopManager.xfce.enable = false;

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "us";
    xkb.variant = "";
  };

  # Enable CUPS to print documents.
  services.printing = {
    enable = true;
    drivers = [ pkgs.epson-escpr ];
  };

  # Scanner
  hardware.sane = {
   enable = true;
   extraBackends = [ pkgs.epsonscan2 ];
  };

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.ervin = {
    isNormalUser = true;
    description = "Ervin Erviansyah";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
    shell = pkgs.fish;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Allow broken packages
  nixpkgs.config.allowBroken = true;

  # Install steam
  programs.steam.enable = true;

  # Install Elektron
  nixpkgs.config.permittedInsecurePackages = [
  "electron-27.3.11"
  ];

  # Flakes
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  Text Editor
  neovim

  # Software Desain
  gimp-with-plugins
  inkscape
  scribus
  krita
  darktable
  libraw
  blender-hip

  # Plugin Desain
  gimpPlugins.resynthesizer

  # Audio
  audacity
  lmms

  # Video
  obs-studio
  kdePackages.kdenlive
  vlc
  handbrake

  # Sistem
  htop
  neofetch
  fastfetch
  timeshift
  bitwarden-desktop
  brave
  git
  libgcc
  nerdfonts
  ripgrep
  gnumake
  nodejs_23
  unzip
  wget
  gcc
  zig
  jdk
  python314
  lua-language-server
  libclang
  clang-tools
  lua
  luajitPackages.lua-lsp
  smartmontools
  vnstat
  cargo
  kitty
  fish
  eza
  ntfs3g
  comma
  nix-index

  # Game
  discord
  lutris
  minecraft
  prismlauncher

  # Kepenulisan
  libreoffice-fresh
  zotero
  logseq

  # Font
  corefonts
  vistafonts

  # Personal
  zapzap
  telegram-desktop
  vscode
  thunderbird
  gnome-boxes
  gabutdm

  # Wine
  wineWowPackages.stable
  winetricks

  ];

  # Default Text Editor
  environment.variables.EDITOR = "neovim";

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?

  # Flatpak
  services.flatpak.enable = true;

  # Automatic Garbage Collection
  nix.gc = {
                automatic = true;
                dates = "weekly";
                options = "--delete-older-than 7d";
        };

  # Zram
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 50;
  };

  # Waydroid
  virtualisation.waydroid.enable = true;

  # Vnstat
  services.vnstat.enable = true;

  hardware.graphics = {
   enable = true;
   extraPackages = with pkgs; [
     rocmPackages.clr.icd
    ];
  };

  # Configuration Fish
  programs.fish = {
   enable = true;
   shellAliases = {
     ls = "eza";
     ll = "ls -l";
     la = "ls -al";
     du = "${pkgs.du-dust}/bin/dust";
   };
   };



}
