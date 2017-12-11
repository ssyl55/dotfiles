mkdir -p ~/.config/nvim
touch ~/.config/nvim/init.vim
echo 'source ~/dotfiles/nvim/init.vim' > ~/.config/nvim/init.vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
