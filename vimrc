"
" Settings
"
set noerrorbells                " No beeps
set visualbell                  " don't beep
set number                      " Show line numbers
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup					" Don't create annoying backup files
set nowritebackup
set splitright                  " Split vertical windows right to the current windows
set splitbelow                  " Split horizontal windows below to the current windows
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2
set hidden                      " It hides buffers instead of closing them. This means that you can have unwritten changes to a file and open a new file using :e, without being forced to write or undo your changes first. Also, undo buffers and marks are preserved while the buffer is open. This is an absolute must-have.

set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting

set ruler                       " Show the cursor position all the time
au FocusLost * :wa              " Set vim to save the file on focus out.

set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set ignorecase                  " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters

" speed up syntax highlighting
set nocursorcolumn
set nocursorline

syntax sync minlines=256
set synmaxcol=300
set re=1

" Make Vim to handle long lines nicely.
set nowrap                      " don't wrap lines
set textwidth=79
set formatoptions=qrn1

set et
set tabstop=4                   " a tab is 4 spaces
set shiftwidth=4                " number of spaces to use for autoindenting
set expandtab

set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

set title                       " change the terminal's title

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" If linux then set ttymouse
let s:uname = system("echo -n \"$(uname)\"")
if !v:shell_error && s:uname == "Linux" && !has('nvim')
  set ttymouse=xterm
endif



" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %


" Do not show stupid q: window
map q: :q

" trim all whitespaces away
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

" awesome colorscheme
colorscheme badwolf
