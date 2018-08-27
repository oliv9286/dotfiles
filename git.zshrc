git config --global user.name "Olivia Zhang"
git config --global user.email "olivia.ny.zhang@gmail.com"

# SSH KEY_GEN
ssh-keygen -t rsa -b 4096 -C "olivia.ny.zhang@gmail.com"

eval "$(ssh-agent -s)"