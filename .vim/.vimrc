" Takes advantage of vim improvements on vi
set nocompatible

" Makes backspace work as expected
set backspace=eol,start,indent

syntax on

" Line numbers show up
set nu

" Set colors to use the 256 color palette
set t_Co=256

" Copy indentation level when creating a new file
set autoindent

" Try to put the indent level at the right place
set smartindent

" Highlight search terms instead of just moving the cursor
set hlsearch

" Highlight search terms as you type them
set incsearch

" Set tab width
set tabstop=2 

" Always display the current cursor position in the lower right corner of the Vim window
set ruler

" Press space to clear search highlighting and any message already displayed
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

" Fixes common typos
" 	correct :W to :w #typo
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
" 	correct :Q to :q #typo
cnoreabbrev <expr> Q ((getcmdtype() is# ':' && getcmdline() is# 'Q')?('q'):('Q'))
" 	correct :WQ to :wq #typo
cnoreabbrev <expr> WQ ((getcmdtype() is# ':' && getcmdline() is# 'WQ')?('wq'):('WQ'))
" 	correct :Wq to :wq #typo
cnoreabbrev <expr> Wq ((getcmdtype() is# ':' && getcmdline() is# 'Wq')?('wq'):('Wq'))

" Setting the default vim theme (getting rid of the default because comments are hard to see
" in the default theme), also disabling the annoying vim beep when at the end of the line
colo turtles 
set visualbell
set t_vb=


