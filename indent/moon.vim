" Vim indent file
" Language: Moon
" Maintainer: Daniel P. Wright <dani@dpwright.com>

if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=GetMoonIndent()
setlocal indentkeys+=0=function,end
setlocal autoindent

function! GetMoonIndent()
  let prevlnum = prevnonblank(v:lnum - 1)

  if prevlnum == 0
    return 0
  endif

  let ind = indent(prevlnum)
  let prevline = getline(prevlnum)
  
  let midx = match(prevline, '^\s*\%(function\>\)')
  if midx != -1 && synIDattr(synID(prevlnum, midx + 1, 1), "name") != "moonComment"
    let ind = ind + &shiftwidth
  endif

  let midx = match(getline(v:lnum), '^\s*\%(end\>\)')
  if midx != -1 && synIDattr(synID(v:lnum, midx + 1, 1), "name") != "moonComment"
    let ind = ind - &shiftwidth
  endif

  return ind
endfunction
