# PATH variables
fish_add_path $HOME/.cargo/bin
fish_add_path /home/unixuser3/.local/bin

if status is-interactive
    # Commands to run in interactive sessions can go here
    alias pls="sudo"
    alias pkg="sudo dnf install -y"      
    set fish_greeting "Welcome to fish, the friendly interactive shell! <3"
    fish_add_path $HOME/.cargo/bin

    #  hyfetch fetch
    set -x PF_INFO "ascii title os host uptime pkgs memory de shell"
    set -x PF_ASCII "arch"
    pfetch
end
