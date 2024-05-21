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
### Downloads and initial setup 
* To download and load the initial setup, you can either run the mac shell script for macOS running systems or the linux shell script, for Ubuntu running systems. To enable the shell script you should do:
  ```bash
  ~ chmod +x name_of_the_shell_file.sh
  ```
* And then, simply run the script and wait:
  ```bash
  ~ name_of_the_shell_file.sh 
  ```
* Note that these scripts only load a fairly simple setup for both systems. If you want to download more packages and configure other stuff you can edit the shell script files to suit your needs the best, these are only my personal configs.
