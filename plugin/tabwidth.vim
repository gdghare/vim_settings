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

