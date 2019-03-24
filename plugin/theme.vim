" Set themes
"
if (has("gui_running"))

  " Display special characters for tab and trailing spaces
  set listchars =tab:»·,trail:·
  set list

  " Make command line two lines high
  set ch=2

  " Make shift-insert work like in Xterm
  map <S-Insert> <MiddleMouse>
  map! <S-Insert> <MiddleMouse>

  " Hide the mouse pointer while typing
  set mousehide

  if has("gui_gtk3")
    set guifont=Cousine\ 8,Droid\ Sans\ Mono\ 8,Liberation\ Mono\ Regular\ 8,Noto\ Mono\ Regular\ 8
  elseif has("gui_gtk2")
    set guifont=Droid\ Sans\ Mono\ 8,Liberation\ Mono\ 8,Terminal\ 10
  elseif has("x11")
    set guifont=-adobe-courier-medium-r-normal-*-12-*-*-*-*-*-*-*
  elseif has("gui_win32")
    set guifont=Consolas:h10:cANSI
  else
    set guifont=Courier\ New\ 10
  endif

elseif (&term =~ "xterm")

  "set t_Co=8
  set t_Sf=[3%dm
  set t_Sb=[4%dm

  " Fix backspaces in xterm
  set t_kb=
  fixdel

  " Enable mouse even in xterms
  "set mouse=a

endif

" Select default colorscheme
colorscheme torte

