" Vim syntax file
" Language: Moon
" Maintainer: Daniel P. Wright <dani@dpwright.com>

if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "moon"

syn keyword moonStatement null true false
syn keyword moonStatement global shared const var ref
syn keyword moonStatement function end
syn keyword moonStatement return state reset
syn keyword moonStatement if while

syn keyword moonPreProc   include use 
syn keyword moonType      bool int float string

syn match   moonLineComment     "#.*$"
syn region  moonBlockComment    start="-#-" end="-#-"

syn region  moonString          start=+"+ end=+"+
syn match   moonStringLength    "<[0-9]\+>"

syn match   moonNumber          "\([0-9]*\.\)\?[0-9]\+"
syn match   moonName            "[A-Z][a-zA-Z0-9_]*"
syn match   moonIdentifier      "[a-z_][a-zA-Z0-9_]*"

syn match   moonParen           contained "("
syn match   moonFunction        "[a-z_][a-zA-Z0-9_]*\s*(" contains=moonParen

syn match   moonTypeOperator    contained ":"
syn match   moonTypeDeclaration "[A-Z][a-zA-Z0-9_]*\s*:" contains=moonTypeOperator

syn match   moonState           "<[A-Z][a-zA-Z0-9_]*>"

hi def link moonStatement       Statement
hi def link moonPreProc         PreProc
hi def link moonType            Type
hi def link moonComment         Comment
hi def link moonLineComment     moonComment
hi def link moonBlockComment    moonComment
hi def link moonString          Constant
hi def link moonStringLength    Special
hi def link moonNumber          Constant
hi def link moonFunction        Function
hi def link moonState           Special
hi def link moonTypeDeclaration moonType
