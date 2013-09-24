sudo apt-get install tmux zsh git-core python-pip htop -y
sudo pip install jedi
sudo pip install ipython
git clone --recursive https://github.com/averrin/maximum-awesome.git
cd ./maximum-awesome
cp -r ./tmux.conf ~/.tmux.conf
cp ./zshrc ~/.zshrc
cp ./vimrc ~/.vimrc
cp -r vim ~/.vim
cp -r ~/.vim/vim/* ~/.vim
cp -r ./oh-my-zsh ~/.oh-my-zsh
cd ~/.oh-my-zsh/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
echo "alias averrin='tmux -u attach -t averrin || tmux -u new -s averrin'" >> ~/.bashrc
echo "alias tester='tmux -u attach -t tester || tmux -u new -s tester'" >> ~/.bashrc
cd
echo "Done. type 'tmux -u' to start"
