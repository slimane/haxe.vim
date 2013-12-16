" Vim syntax file
" Language: haxe
" Maintainer: kay slimane
" Latest Revision: 17 Dec 2013


if exists("b:current_syntax")
  finish
end

if version > 600
  syntax clear
else
  let b:current_syntax = 'haxe'
  finish
endif


setlocal shiftwidth=2 tabstop=2
" TODO:keywordを適切な分類にする
syntax keyword hx_keyword var return typedef cast untyped inline callback


" Object-Oriented key word
syntax keyword hx_keyword_oo package import using interface class this special dynamic override static extends implements extern
syntax match hx_keyword_oo_new /new\ze\s/
syntax keyword hx_keyword_oo_properties null never set get default
syntax keyword hx_keyword_oo_access_level public private




" Conditional
syntax keyword hx_if if else
syntax keyword hx_switch switch case default
syntax match hx_logical_expression /\(&&\|||\)/




" Loop
syntax keyword hx_repeat do while for in continue break
syntax keyword hx_error try catch throw trace


syntax match hx_comment_s /\/\/.*/
syntax match hx_assigment_operation /\(<<\|>>\|>>>\|[+\-\*\%\&|\^\/]\)\?=/

syntax match hx_preprocesser /#\(if\|else\|error\)/



" Type
syntax keyword hx_type_default String Int Bool Dynamic Void
syntax keyword hx_type_enum enum
syntax match hx_type /\s\?:\s*\zs\([A-Z]\w*\.\)*[A-Z]\w*\(<[A-Z]\w*\(\s*,\s*[A-Z]\w*\)*>\)\?/
syntax match hx_type_arrow /->/
syntax match hx_type_optional /@:optional/




" Function
syntax keyword hx_keyword_function function
syntax match hx_function /\(\w\+\.\)\?\zs\w\+\ze(/
syntax match hx_special_function /\$\w\+\zs(/


" literal
syntax match hx_int /[\-\+]\?[0-9]\+/
syntax match hx_int_hx /[\-\+]\?0x[0-9a-fA-F]\+/
syntax match hx_float /[\-+]\?\d*\.\d\+/
syntax match hx_float_e /[\-+]\?\d\+[eE]-\?\d\+/
syntax keyword hx_boolean true false
syntax region hx_string_d start=/"/ skip=/\\"/ end=/"/
syntax region hx_string_s start=/'/ skip=/\\'/ end=/'/
syntax region hx_regular_expression start=/\~\// skip=/\\\// end=/\/i\?/
syntax keyword hx_null null



command -nargs=+ HiLink hi link <args>

" literal
HiLink hx_int Number
HiLink hx_int_hx Number
HiLink hx_float Float
HiLink hx_float_e Float
HiLink hx_boolean Boolean
HiLink hx_string_d String
HiLink hx_string_s String
HiLink hx_regular_expression String
HiLink hx_null Type




HiLink hx_type_default Type
HiLink hx_type_enum Type
HiLink hx_type Type
HiLink hx_type_arrow Type
HiLink hx_type_optional Keyword
HiLink hx_comment_s Comment
HiLink hx_assigment_operation Special

HiLink hx_preprocesser PreProc

HiLink hx_keyword_oo_access_level Keyword
HiLink hx_keyword_oo Keyword
HiLink hx_keyword_oo_new Keyword
HiLink hx_keyword_oo_properties Keyword
HiLink hx_keyword Keyword


HiLink hx_keyword_function Function
HiLink hx_function Function
HiLink hx_special_function Function

HiLink hx_if Conditional
HiLink hx_switch Conditional
HiLink hx_logical_expression Conditional
HiLink hx_repeat Repeat
HiLink hx_error Error



delcommand  HiLink

let b:current_syntax = 'haxe'
