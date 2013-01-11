" Vim syntax file
" Language: Moon
" Maintainer: Daniel P. Wright <dani@dpwright.com>

if exists("b:current_syntax")
  finish
endif

syn keyword moonStatement return null true false end global
syn keyword moonStatement shared const var ref function return state reset
syn keyword moonPreProc   include use 
syn keyword moonType      bool int float string

syn match   moonLineComment     "#.*$"
syn region  moonBlockComment    start="-#-" end="-#-"

hi def link moonStatement       Statement
hi def link moonPreProc         PreProc
hi def link moonType            Type
hi def link moonLineComment     Comment
hi def link moonBlockComment    Comment
