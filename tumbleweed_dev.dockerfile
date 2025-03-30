FROM opensuse/tumbleweed

# Required to be used as a VS Code Dev Container
RUN zypper in -y awk tar

RUN zypper in -y zypper in make tmux gcc cmake libnotify-tools chafa -y

# Install Rust
RUN zypper in -y rustup

RUN cargo install --locked yazi-fm yazi-cl fd-find ripgrep

# Install PHP
RUN zypper in -y php8 php-composer2

# JavaScript
RUN zypper in -y deno
RUN deno upgrade

# Install our software
RUN zypper in -y \
  git            \
  helix          \
  lazygit        \
  starship
