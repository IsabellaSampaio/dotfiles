echo "Hello, downloading the packages, please wait, this may take a while"
cd
sleep 2
sudo apt-get update && sudo apt update
wait
sudo apt upgrade
wait
echo "Installing zsh..."
sudo apt install zsh
wait
echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "Installing powerline-10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
wait
echo "Installing openssh..."
sudo apt install openssh-client
wait
sudo apt install openssh-server
wait
echo "All set, enjoy!" 
sleep 2
cd
exec zsh -l 
