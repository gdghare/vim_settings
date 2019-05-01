" The global vimrc file.

" When started as "evim", evim.vim will already have done these settings, bail out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults
source $VIMRUNTIME/defaults.vim

" Keep an undo file (undo changes after closing) if compiled with this feature enabled.
if has('persistent_undo')
  if has("gui_win32")
    set undodir^="$TEMP,c:/tmp,c:/temp"
  else
    set undodir^="~/.vim/backup"
  endif
  set undofile
endif

" Map F10 to toggle hlsearch
map <F10> <ESC>:set hlsearch!<CR>


" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " Do not keep backup files, use revison control system if backups are needed.
  set nobackup
  " Keep a backup file while writing
  set writebackup

  " Display line numbers
  set number

augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

