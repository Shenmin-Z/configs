unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     machine=Linux;;
  Darwin*)    machine=Mac;;
  CYGWIN*)    machine=Cygwin;;
  MINGW*)     machine=Windows;;
  MSYS*)     machine=Windows;;
  *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$machine" == "Linux" ]; then
  configHome="$HOME/.config"
elif [ "$machine" == "Windows" ]; then
  configHome="$HOME/AppData/Local"
fi

rm $configHome/nvim/init.vim $configHome/nvim/coc-settings.json
ln -sf $(pwd)/init.vim $configHome/nvim/init.vim
ln -sf $(pwd)/coc-settings.json $configHome/nvim/coc-settings.json
