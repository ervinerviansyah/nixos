{ config, pkgs, ... }:
let
  unstable = import <nixos-unstable> { };
in 



{
  # Informasi tentang home-manager
    home.username = "ervin";
    home.homeDirectory = "/home/ervin";
    home.stateVersion = "24.11";   
    home.enableNixpkgsReleaseCheck = false;
 
  # Allow unfree packages
    nixpkgs.config.allowUnfree = true;
  # Allow broken packages
    nixpkgs.config.allowBroken = true;
  # Install Elektron
    nixpkgs.config.permittedInsecurePackages = [
      "electron-27.3.11"
    ];
    
  # Fonts config
    fonts.fontconfig.enable = true;  

  # Instalasi packages maupun software
    home.packages = with pkgs; [
      # Text Editor
      neovim
      unstable.vscode

      # Software Desain Grafis
      gimp-with-plugins
      inkscape
      scribus
      krita
      darktable
      blender-hip

      # Extension File Format
      libraw

      # Plugin Desain Grafis
      gimpPlugins.resynthesizer

      # Audio Mixing
      audacity
      lmms

      # Video Editing
      obs-studio
      kdePackages.kdenlive
      vlc
      handbrake
      synfigstudio

      # Essential Sistem
      htop
      neofetch
      fastfetch
      git
      unzip
      wget
      ntfs3g
      p7zip-rar

      # Backup Software
      timeshift

      # Personal Use
      bitwarden-desktop
      zapzap
      telegram-desktop
      thunderbird
      gnome-boxes
      gabutdm
      discord
      spotify

      # Browser
      brave

      # Kebutuhan Pemrograman
      libgcc
      ripgrep
      gnumake
      nodejs_23
      gcc
      zig
      python314
      jdk
      lua-language-server
      libclang
      lua 
      luajitPackages.lua-lsp
      cargo
      gem
      live-server
      luajitPackages.luarocks
      tree-sitter
      clipboard-jh

      # Pemantauan Sistem
      smartmontools
      vnstat

      # Terminal
      kitty

      # Shell & Pendukung
      fish
      eza

      # Pendukung Nix
      comma 
      nix-index

      # Wine
      wineWowPackages.stable
      winetricks

      # Kepenulisan
      unstable.libreoffice-fresh
      zotero
      logseq
      manuskript

      # Game
      lutris
      minecraft
      prismlauncher
      godot_4

      # Fonts
      corefonts
      vistafonts
      nerdfonts  

    # Informasi   
    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })

    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Konfigurasi dots file 
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/ervin/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
     EDITOR = "neovim";
  };

  # Konfigurasi Packages
  programs.home-manager.enable = true;
  
}
