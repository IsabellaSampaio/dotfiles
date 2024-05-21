# Main configs 

This is a repository for the main configs that I use for programming and productivity. Here it will be possible to find my configs for vim, zsh, and other tools that I've been using.

### Vim config
* To set your configs on .vimrc file, you can simply copy the settings .vimrc and then on your vim environment run the command below to make sure that the new configs are all set:
  ```bash
  :source .vimrc
  ```
* After that you should also install a colorscheme, in my case im using molokai:
  ```bash
  
  ~ mkdir .vim/colors #in case you don't have a colors fold, create one inside .vim fold
  
  ~ cd .vim/colors
  
  ~ curl -o molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
  ```
* You should also install the tool to help you run your plugins:
  ```bash
  ~ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```
