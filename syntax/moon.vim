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
hi def link moonLineComment     Comment
hi def link moonBlockComment    Comment
hi def link moonString          Constant
hi def link moonStringLength    Special
hi def link moonNumber          Constant
hi def link moonFunction        Function
hi def link moonState           Special
hi def link moonTypeDeclaration moonType
