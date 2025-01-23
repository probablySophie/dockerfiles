FROM opensuse/tumbleweed

# Required to be used as a VS Code Dev Container
RUN zypper in -y awk tar

# Install Rust
RUN zypper in -y rustup

# Install PHP
RUN zypper in -y php8 php-composer2

# JavaScript
RUN zypper in -y deno
RUN deno upgrade

# Install our software
RUN zypper in -y \
  git            \
  tmux           \
  helix
