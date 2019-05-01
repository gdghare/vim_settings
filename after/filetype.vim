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

    autocmd FileType {python,perl,pod} call SetTabWidth(4,1)
    autocmd FileType {python,perl,pod} call SetTextWidth(120)

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

    " autocmd FileType diff call SetGuiWidth(250)

  augroup END

endif " has("autocmd")


