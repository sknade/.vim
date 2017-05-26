# .vim


My personel vim dot files.

`.vimrc` file is saved to [vimrc](https://github.com/sknade/.vim).


## Clone vimrc

Just run the following commands via terminal to get perfectly set up:


```console
$ cd ~/
$ git clone --recursive https://github.com/sknade/.vim.git .vim
$ ln -sf $HOME/.vim/vimrc $HOME/.vimrc
```


## Pathogen.vim installation

[pathogen.vim](https://github.com/tpope/vim-pathogen) makes it super easy to install plugins and runtime files in their own private directories

run the following command via terminal:

```console
$ mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

paste into ~/.vim/vimrc to activate panthogen plugin loader:

    execute pathogen#infect()
    syntax on
    filetype plugin indent on

## Badwolf awesome colorscheme

[Bad Wolf](https://github.com/sjl/badwolf) -  color scheme for Vim
```console
$ git clone https://github.com/sjl/badwolf.git ~/.vim/bundle/
```

to avtivate scheme, copy paste next lint into ~/.vim/vimrc

    colorscheme badwolf
