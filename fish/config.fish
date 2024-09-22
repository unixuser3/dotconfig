# PATH variables
fish_add_path $HOME/.cargo/bin
fish_add_path /home/unixuser3/.local/bin

if status is-interactive
    # aliasing, basic things
    alias pls="sudo"
    alias pkg="sudo dnf install -y"
    alias brwsr="flatpak run org.chromium.Chromium"      
    set fish_greeting "Welcome to fish, the friendly interactive shell! <3"
    fish_add_path $HOME/.cargo/bin

    #  pfetch fetch
    set -x PF_INFO "ascii title os host uptime pkgs memory de shell"
    set -x PF_ASCII "arch"
    pfetch
end
