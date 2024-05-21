echo "Hello, downloading the packages, please wait, this may take a while"
cd
sleep 2
echo "Installing brew..." 
/bin/bash -c "$(curl -f:sSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
wait 
echo "Installing zsh..."
brew install zsh
wait 
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wait
echo "Installing powerline-10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wait
echo "Installing openssh..."
sudo apt install openssh-client
wait
sudo apt install openssh-server
cd
exec zsh -l 
echo "All set, enjoy!" 
