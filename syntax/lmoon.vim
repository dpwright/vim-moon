" Vim syntax file
" Language: Literate Moon
" Maintainer: Daniel P. Wright <dani@dpwright.com>

syntax clear
runtime! syntax/markdown.vim
unlet b:current_syntax

syntax include @moon syntax/moon.vim
let b:current_syntax = "lmoon"

syntax match moonLiterateDelimiter
  \ "^>"
  \ contained

syntax region moonLiterate matchgroup=moonLiterateDelimiter
  \ start="^>" end="\%(^[^>]\)\@="
  \ contains=moonLiterateDelimiter,@moon

highlight! link hsLiterateDelimiter Delimiter
