" My Vim-Colorscheme inspired by the classic Light Visual Studio colorscheme
" Author: Marvin Dostal

set background=light

" -------------------
" Default Stuff to do
" -------------------
highlight clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "bionik2"

" -----------------
" Colors I will use
" -----------------
"  Black / Dark Gray            
"  Dark Blue                    
"  Dark Green                   
"  Dark Cyan                    
"  Dark Red                     
"  Dark Magenta                 
"  Dark Yellow                  
"  Light Gray / White           
"  none (foreground) -> Black   
"  none (background) -> White   

"Gui Colors
let Black_DarkGray = '#101010'
let DarkBlue       = '#0A5594'
let DarkGreen      = '#00B800'
let DarkCyan       = '#00986A'
let DarkRed        = '#E60000'
let DarkMagenta    = '#B30070'
let DarkYellow     = '#E66E00'
let LightGray      = '#E0E0E0'
let NoneFG         = '#000000'
let NoneBG         = '#FFFFFF'

" -----------------
" Available Options
" -----------------
"
" From: sbf5.com
" | Key     | Possible Values           |
" |---------|---------------------------|
" | term    | bold, underline, reverse, |
" |---------| italic, none              |
" | cterm   |                           | 
" |---------|                           |
" | gui     |                           |
" |---------|---------------------------|
" | ctermfg | red, yellow, green, blue, |
" |---------| magenta, cyan, white,     |
" | ctermbg | black, gray               |
" |---------|---------------------------|
" | guifg   | All of the above colors,  |
" |---------| plus many more; you may   |
" | guibg   | also use the #rrggbb      |
"
" Somehow bold: see (:help cterm-colors)
" boldness in cterm and gui after the colors (because of reasons)

"                        term            ctermfg             ctermbg             guifg                  guibg                    cterm           gui
" Syntax (:help group-name)

exe 'hi Normal           term=none       ctermfg=none        ctermbg=none        guifg=' . NoneFG .   ' guibg=' . NoneBG .     ' cterm=none      gui=none'
"hi Cursor           term=reverse    ctermfg=LightGray   ctermbg=Black       guifg=#FFFFFF   guibg=#000000   cterm=none      gui=none
exe 'hi LineNr           term=none       ctermfg=none        ctermbg=LightGray   guifg=' . NoneFG .   ' guibg=' . LightGray .  ' cterm=none      gui=none'
exe 'hi CursorLineNr     term=none       ctermfg=none        ctermbg=none        guifg=' . NoneFG .   ' guibg=' . NoneBG .     ' cterm=bold      gui=bold'

exe 'hi FoldColumn       term=none       ctermfg=DarkCyan    ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=reverse   gui=reverse'
exe 'hi Folded           term=none       ctermfg=DarkCyan    ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=reverse   gui=reverse,italic'
"hi SignColumn       term=none       ctermfg=White       ctermbg=DarkCyan    guifg=#FFFFFF   guibg=#008080   cterm=none      gui=none

exe 'hi ColorColumn      term=none       ctermfg=none        ctermbg=LightGray                          guibg=' . LightGray .  ' cterm=none      gui=none'

"hi Directory        term=bold       ctermfg=DarkMagenta ctermbg=none        guifg=#7070E0   guibg=#FFFFFF   cterm=none      gui=none
exe 'hi Search           term=reverse    ctermfg=none        ctermbg=LightGray   guifg=' . NoneFG .   ' guibg=' . LightGray .  ' cterm=none      gui=none'

exe 'hi MatchParen       term=reverse    ctermfg=none        ctermbg=DarkGreen                          guibg=' . DarkGreen .  ' cterm=none      gui=none'
exe 'hi Visual           term=reverse    ctermfg=none        ctermbg=none                               guibg=' . NoneBG .     ' cterm=reverse   gui=reverse'
"hi VisualNOS        term=reverse    ctermfg=none        ctermbg=none                        guibg=#FFFFFF   cterm=reverse   gui=reverse

exe 'hi Underlined       term=underline  ctermfg=none        ctermbg=none                                                        cterm=underline gui=underline'
exe 'hi Error            term=none       ctermfg=DarkRed     ctermbg=none        guifg=' . DarkRed   .' guibg=' . NoneBG .     ' cterm=bold,reverse gui=bold,reverse'
exe 'hi ErrorMsg         term=none       ctermfg=DarkRed     ctermbg=none        guifg=' . DarkRed   .' guibg=' . NoneBG .     ' cterm=reverse   gui=reverse'
exe 'hi WarningMsg       term=none       ctermfg=DarkYellow  ctermbg=none        guifg=' . DarkYellow.' guibg=' . NoneBG .     ' cterm=reverse   gui=reverse'

" Stuff linked to Constant
exe 'hi Constant         term=none       ctermfg=none        ctermbg=none        guifg=' . NoneFG .   ' guibg=' . NoneBG .     ' cterm=bold      gui=bold '
"hi Boolean          term=none       ctermfg=DarkRed     ctermbg=none        guifg=#E02020
exe 'hi String           term=none       ctermfg=DarkRed     ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none      gui=none'
exe 'hi Character        term=none       ctermfg=DarkRed     ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none      gui=none'

" Stuff linked to Number (which is linked to Constant)
exe 'hi Number           term=none       ctermfg=DarkRed     ctermbg=none        guifg=' . DarkRed .  ' guibg=' . NoneBG .     ' cterm=none      gui=none'
"hi Float            term=none       ctermfg=DarkRed     ctermbg=none        guifg=#E02020

" Stuff linked to Identifier
exe 'hi Identifier       term=none       ctermfg=DarkCyan    ctermbg=none        guifg=' . DarkCyan . ' guibg=' . NoneBG .     ' cterm=none      gui=none'
"hi Function         term=none       ctermfg=Black                           guifg=#000000

" Stuff linked to Statement
exe 'hi Statement        term=bold       ctermfg=DarkBlue    ctermbg=none        guifg=' . DarkBlue . ' guibg=' . NoneBG .     ' cterm=bold      gui=bold,italic'
"hi Conditional      term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 
"hi Repeat           term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 
"hi Label            term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 
"hi Operator         term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 
"hi Keyword          term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 
"hi Exception        term=none       ctermfg=none        ctermbg=none                                        cterm=none      gui=none 

exe 'hi Comment          term=none       ctermfg=DarkGreen   ctermbg=none        guifg=' . DarkGreen .' guibg=' . NoneBG .     ' cterm=none      gui=italic'

" Stuff linked to Special
exe 'hi Special          term=none       ctermfg=DarkMagenta ctermbg=none        guifg=' . DarkMagenta .' guibg=' . NoneBG .   ' cterm=none      gui=none'
"hi SpecialChar      term=none       ctermfg=DarkMagenta ctermbg=none        guifg=#C000C0                   cterm=none      gui=none
"hi Tag              term=none       ctermfg=DarkMagenta ctermbg=none        guifg=#C000C0                   cterm=none      gui=none
"hi Delimiter        term=none       ctermfg=DarkMagenta ctermbg=none        guifg=#C000C0                   cterm=none      gui=none
"hi SpecialComment   term=none       ctermfg=DarkMagenta ctermbg=none        guifg=#C000C0                   cterm=none      gui=none
"hi Debug            term=none       ctermfg=DarkMagenta ctermbg=none        guifg=#C000C0                   cterm=none      gui=none

exe 'hi Title            term=underline  ctermfg=DarkMagenta ctermbg=none        guifg=' . DarkMagenta .' guibg=' . NoneBG .   ' cterm=underline,bold gui=underline,bold'

" Stuff linked to PreProc
exe 'hi PreProc          term=none       ctermfg=DarkYellow ctermbg=none         guifg=' . DarkYellow .' guibg=' . NoneBG .    ' cterm=none      gui=none'
"hi Include          term=none       ctermfg=DarkYellow ctermbg=none         guifg=#e68a00                  cterm=none      gui=none
"hi Define           term=none       ctermfg=DarkYellow ctermbg=none         guifg=#e68a00                  cterm=none      gui=none
"hi Macro            term=none       ctermfg=DarkYellow ctermbg=none         guifg=#e68a00                  cterm=none      gui=none
"hi PreCondit        term=none       ctermfg=DarkYellow ctermbg=none         guifg=#e68a00                  cterm=none      gui=none

" Stuff linked to Type
exe 'hi Type             term=bold       ctermfg=DarkMagenta ctermbg=none        guifg=' . DarkMagenta.' guibg=' . NoneBG .    ' cterm=bold      gui=bold,italic'
"hi StorageClass     term=bold       ctermfg=DarkCyan    ctermbg=none        guifg=#20A0A0                   cterm=bold      gui=bold 
"hi Structure        term=bold       ctermfg=DarkCyan    ctermbg=none        guifg=#20A0A0                   cterm=bold      gui=bold 
"hi Typedef          term=bold       ctermfg=DarkCyan    ctermbg=none        guifg=#20A0A0                   cterm=bold      gui=bold 

" Vim features (:help highlight-groups) or (:help hl-...)
