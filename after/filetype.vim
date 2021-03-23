if has("eval")

  if !exists("*SetTabWidth")
    " Set tabstop, shiftwidth, softtabstop consistently based on the arg tabw.
    " Enable expanding tabs to spaces if expand is true
    function SetTabWidth(tabw, expand)
      execute "setlocal shiftwidth=".a:tabw." tabstop=".a:tabw." softtabstop=".a:tabw." shiftround"
      " Expand tabs to spaces
      if a:expand
        setlocal expandtab
      endif
    endfunction
  endif

  if !exists("*SetTextWidth")
    " Set the text width and modify window width
    function SetTextWidth(width)
      execute "setlocal textwidth=".a:width
    endfunction
  endif

  if !exists("*SetGuiWidth")
    function SetGuiWidth(width)
      if has("gui_running") && (a:width > 0)
        " TBD : do this only if this is the only file loaded
        execute "setlocal columns=".(a:width+10)
      endif
    endfunction
  endif

endif " has("eval")

if has("autocmd")

  augroup treat_filetype_as_text
    autocmd!
    autocmd BufRead,BufNewFile *.{txt,text} setfiletype text
    autocmd BufRead,BufNewFile README setfiletype text

  augroup END

  " Set file type to text if filetype has not been determined
  setfiletype text

  augroup fileignorecase
    autocmd!
    " Ignore case on file types that are not case sensitive
    autocmd FileType html setlocal ignorecase
  augroup END

  augroup filesmartindent
    autocmd!
    autocmd FileType text setlocal nosmartindent
    autocmd FileType verilog_systemverilog setlocal nosmartindent
  augroup END

  augroup filetexttabwidth
    autocmd!

    " Python PEP8 convention is to have this as 4
    autocmd FileType python call SetTabWidth(4,1)
    autocmd FileType python call SetTextWidth(120)

    autocmd FileType {perl,pod} call SetTabWidth(4,1)
    autocmd FileType {perl,pod} call SetTextWidth(120)

    autocmd FileType {c,cpp} call SetTabWidth(4,1)
    autocmd FileType {c,cpp} call SetTextWidth(120)

    autocmd FileType vim call SetTabWidth(2,1)
    autocmd FileType vim call SetTextWidth(120)

    autocmd FileType {sh,csh} call SetTabWidth(2,1)
    autocmd FileType {sh,csh} call SetTextWidth(120)

    autocmd FileType xml call SetTabWidth(2,1)
    autocmd FileType xml call SetTextWidth(120)

    autocmd FileType text call SetTabWidth(2,1)
    autocmd FileType text call SetTextWidth(120)

    autocmd FileType {verilog,verilog_systemverilog} call SetTabWidth(2,1)
    autocmd FileType {verilog,verilog_systemverilog} call SetTextWidth(120)

    autocmd FileType tcl call SetTabWidth(4,1)
    autocmd FileType tcl call SetTextWidth(120)

    autocmd FileType yaml call SetTabWidth(2,1)
    autocmd FileType yaml call SetTextWidth(120)

    " autocmd FileType diff call SetGuiWidth(250)

  augroup END

endif " has("autocmd")


