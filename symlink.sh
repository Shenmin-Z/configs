unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     machine=Linux;;
  Darwin*)    machine=Mac;;
  CYGWIN*)    machine=Cygwin;;
  MINGW*)     machine=Windows;;
  MSYS*)      machine=Windows;;
  *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$machine" == "Linux" ]; then
  configHome="$HOME/.config"

  rm -f $configHome/nvim/init.vim
  ln -sf $(pwd)/init.vim $configHome/nvim/init.vim
elif [ "$machine" == "Windows" ]; then
  # windows needs admin
  configHome="$HOME/AppData/Local"

  rm -f $configHome/nvim/init.vim $configHome/nvim/ginit.vim
  cmd.exe /c symlink.bat
fi
