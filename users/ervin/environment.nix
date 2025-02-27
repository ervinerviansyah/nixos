{
    environment.sessionVariables = rec {
        TERMINAL = "kitty";
        EDITOR = "nvim";
        BROWSER = "brave";
        FILE_MANAGER = "nautilus";
        SHELL = "fish";
        XDG_BIN_HOME = "${HOME}/.local/bin";
        PATH = [
            "${XDG_BIN_HOME}"
    ];
    };
}