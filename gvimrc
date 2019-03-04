" The global vimrc file.
" The commands in this are executed when the GUI is started, after the vimrc
" has been executed.

" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" set the X11 font to use
" set guifont=-misc-fixed-medium-r-normal--14-130-75-75-c-70-iso8859-1

" Make command line two lines high
set ch=2

" Hide the mouse when typing text
set mousehide

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" Select default colorscheme
colorscheme torte

