""""""""""""""""""""""""""""""
" airline setting
""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_detect_whitespace          = 0 "关闭空白符检测
let g:airline#extensions#tabline#enabled = 1 "顶部tab栏显示
let g:airline_theme                      = "bubblegum" "设定主题

""""""""""""""""""""""""""""""
"Latex Suite settings 
""""""""""""""""""""""""""""""
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
autocmd BufEnter *.tex set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

let g:Tex_fold_enable=1
let g:Tex_CompileRule_dvi='latex -src-specials -interaction=nonstopmode $*' "正向搜索

map    <F4>   <ESC>:q <CR>     
map    <F2>   <ESC>:w <CR> \ll  
imap   <F2>   <ESC>:w <CR> \ll
map    <F3>   <ESC> \lv                 
imap   <F3>   <ESC> \lv

:inoremap jk <Esc>
:inoremap <Tab> <Esc>

set nocompatible
"不兼容vi模式
set number
"显示行号
set hlsearch
"设置搜索高亮
syntax on
"语法高亮
set cindent
"按照C语法自动缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
"设置缩进长度
set showmatch
"显示括号对应
set incsearch
set ruler
"实时显示搜索结果
"set encoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"编码设置
"set guifont=Menlo:h14:cANSI
"设置字体

"set transparency=15
"设置透明度

set scrolloff=5
"当光标与顶部距离为三行时发生翻滚，且翻滚后光标与底部相距三行
set autoindent
"自动对齐方式
set smartindent
"智能对齐方式
set showmode
"显示当前模式
set showcmd
"在窗口右下角显示完整命令已输入部分
set hidden
"允许在有未保存的修改时切换缓冲区，此时的修改由vim负责保存
set wildmenu
"启用文本模式的菜单
set wildmode=list:longest
"增强模式打开列表
set visualbell
"可视化铃声
set cursorline
"高亮光标所在行
set ttyfast
"设置快速终端
set backspace=indent,eol,start
"设置backspace的工作方式 不兼容vi
set laststatus=2
"总是显示状态栏
set relativenumber
"显示相对行号，而不是绝对行号
set undofile
"编辑一个文件的时候要创建<FILENAME>.un~文件,以便撤销，即使是关闭重开文件
set encoding=utf-8
"选择编码
set langmenu=zh_CN.UTF-8
set helplang=cn
"language message zh_CN.UTF-8
"避免windows下gvim菜单和系统提示乱码
set fileencodings=ucs-bom,utf-8,utf-16,cp936,gb18030,big5,euc-jp,euc-kr,latin1
"自动识别编码，正确显示中文
set guifont=Menlo:h11
"设置双字节字体
set guifontwide=Hei_Regular:h11
"设置单字节字体
set linespace=1
"设置行高
 colorscheme zellner 
"设置颜色主题:

set background=light "dark
set wrap
"设置自动换行
set wrapscan
"设置折返查找

set history=400
set lines=80 columns=108
"设置macvim窗口大小

autocmd! bufwritepost .vimrc source ~/.vimrc
"定义了一个自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc文件
