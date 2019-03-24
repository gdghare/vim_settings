if has("autocmd")

  augroup filetypedetect
    au! BufRead,BufNewFile *.{txt,text} setfiletype text
    au! BufRead,BufNewFile README setfiletype text
  augroup END

  " Set file type to text if filetype has not been determined
  setfiletype text

  augroup fileignorecase
    " Ignore case on file types that are not case sensitive
    autocmd FileType html setlocal ignorecase
  augroup END

  augroup filesmartindent
    autocmd FileType text setlocal nosmartindent
    autocmd FileType verilog_systemverilog setlocal nosmartindent
  augroup END

  augroup filetexttabwidth

    autocmd FileType perl call SetTabWidth(4,1)
    autocmd FileType perl call SetTextWidth(120)

    autocmd FileType pod call SetTabWidth(4,1)
    autocmd FileType pod call SetTextWidth(120)

    autocmd FileType {c,cpp} call SetTabWidth(4,1)
    autocmd FileType {c,cpp} call SetTextWidth(120)

    " vim files
    autocmd FileType vim call SetTabWidth(2,1)
    autocmd FileType vim call SetTextWidth(120)

    " SH/CSH scripts
    autocmd FileType csh call SetTabWidth(2,1)
    autocmd FileType sh  call SetTabWidth(2,1)

    " config files
    autocmd FileType cfg call SetTabWidth(2,1)
    " xml files
    autocmd FileType xml call SetTabWidth(2,1)

    autocmd FileType text call SetTextWidth(120)

    autocmd FileType verilog call SetTabWidth(2,1)
    autocmd FileType verilog call SetTextWidth(120)
    autocmd FileType verilog_systemverilog call SetTabWidth(2,1)
    autocmd FileType verilog_systemverilog call SetTextWidth(120)

    " Python scripts
    autocmd FileType python call SetTabWidth(4,1)
    autocmd FileType python call SetTextWidth(120)

    " TCL files
    autocmd FileType tcl call SetTabWidth(4,1)
    autocmd FileType tcl call SetTextWidth(120)

    " autocmd FileType diff call SetGuiWidth(250)

  augroup END

endif " has("autocmd")


