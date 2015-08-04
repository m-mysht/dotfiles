"---------------------
" プラグインの管理(NeoBundle）
"---------------------

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

NeoBundleLazy 'Shougo/neocomplete.vim', {
      \ 'depends' : 'Shougo/context_filetype.vim',
      \ 'insert' : 1
      \ }

NeoBundleLazy 'Shougo/neosnippet.vim', {
      \ 'depends' : ['Shougo/neosnippet-snippets', 'Shougo/context_filetype.vim'],
      \ 'insert' : 1,
      \ 'filetypes' : 'snippet',
      \ 'unite_sources' : [
      \    'neosnippet', 'neosnippet/user', 'neosnippet/runtime'],
      \ }

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/tabpagebuffer.vim'
" NeoBundleLazy 'Shougo/unite.vim', {
"       \ 'autoload' : {
"       \ 'commands' : [{ 'name' : 'Unite',
"       \                 'complete' : 'customlist,unite#complete_source,colorscheme'},
"       \                 'Unite',
"       \                 'UniteWithCurrentDir',
"       \              ]
"       \ }}
"NeoBundleLazy 'Shougo/unite-build'
NeoBundleLazy 'Shougo/neossh.vim', {
      \ 'filetypes' : 'vimfiler',
      \ 'sources' : 'ssh',
      \ }
NeoBundle 'Shougo/neomru.vim'

NeoBundleLazy 'ujihisa/vimshell-ssh', {
      \ 'filetypes' : 'vimshell',
      \ }
NeoBundle 'Shougo/unite-sudo'

NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    }
      \ }

NeoBundleLazy 'Shougo/vimshell.vim', {
      \ 'commands' : [{ 'name' : 'VimShell',
      \                 'complete' : 'customlist,vimshell#complete'},
      \              'VimShellCurrentDir',
      \              'VimShellTab',
      \               ],
      \ 'mappings' : '<Plug>'
      \ }

NeoBundle 'tyru/caw.vim.git'

NeoBundle 'kana/vim-submode'

NeoBundleLazy 'Shougo/vinarise.vim', {
      \ 'commands' : [{
      \   'name' : 'Vinarise', 'complete' : 'file'
      \ }]
      \ }

NeoBundleLazy 'vim-jp/vital.vim', {
      \     'commands' : 'Vitalize',
      \ }

NeoBundleLazy 'thinca/vim-quickrun', {
      \ 'mappings' : '<Plug>'
      \ }


NeoBundleLazy 'mattn/benchvimrc-vim', {
            \ 'commands' : 'BenchVimrc',
            \ }

" jedi-vim系
NeoBundleLazy 'jmcantrell/vim-virtualenv', {
            \ 'filetypes' : ['python', 'python3'],
            \ }
NeoBundleLazy 'davidhalter/jedi-vim', {
            \ 'filetypes' : ['python', 'python3'],
            \ }

" NeoBundle 'wting/rust.vim'

NeoBundleLazy 'scrooloose/syntastic', {
            \ 'filetypes' : ['scala', 'python', 'python3'],
            \ }

NeoBundleLazy 'mattn/emmet-vim', {
            \ 'filetypes' : 'html',
            \ }

" NeoBundle 'lervag/vim-latex'

NeoBundleLazy 'hail2u/vim-css3-syntax', {
            \ 'filetypes' : 'html',
            \ }

NeoBundleLazy 'jelera/vim-javascript-syntax', {
           \ 'filetypes' : 'html',
           \ }

" NeoBundleLazy 'othree/html5.vim', {
"             \ 'filetypes' : 'html',
"             \ }
NeoBundle 'itchyny/lightline.vim'
"
"let g:make = 'gmake'
"if system('uname -o') =~ '^GNU/'
"        let g:make = 'make'
"endif
"NeoBundle 'Shougo/vimproc.vim', {'build': {'unix': g:make}}
"
"NeoBundle 'Shougo/vimproc.vim', {
"\ 'build': {
"\ 'windows': 'make -f make_mingw32.mak',
"\ 'cygwin': 'make -f make_cygwin.mak',
"\ 'mac': 'make -f make_mac.mak',
"\ 'unix': 'make -f make_unix.mak',
"\ }
"\}

""NeoBundle 'Shougo/vimfiler'
""NeoBundle 'jpalardy/vim-slime'

""THE NERD Treeによるディレクトリツリーの表示
""NeoBundle 'scrooloose/nerdtree'
""NeoBundle 'vim-scripts/VimClojure'
"
"
"" 括弧補完プラグイン
""NeoBundle 'jiangmiao/auto-pairs'
"
"NeoBundle 'davidhalter/jedi-vim'
"
""""
"" open-browser.vim
""""
"NeoBundle 'tyru/open-browser.vim'
"
""""
"" Previm
""""
"NeoBundle 'kannokanno/previm'
"
"
" Color Scheme
" wombat カラースキーム
NeoBundle 'jeffreyiacono/vim-colors-wombat', {'script_type' : 'colors'}
" railscasts カラースキーム
NeoBundle 'jpo/vim-railscasts-theme', {'script_type' : 'colors'}
" soolarized カラースキーム
NeoBundle 'altercation/vim-colors-solarized'
" mustang カラースキーム
NeoBundle 'croaker/mustang-vim'
" jellybeans カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
" lucius カラースキーム
NeoBundle 'vim-scripts/Lucius'
" zenburn カラースキーム
NeoBundle 'vim-scripts/Zenburn'
" mrkn256 カラースキーム
NeoBundle 'mrkn/mrkn256.vim'
" pyte カラースキーム
NeoBundle 'therubymug/vim-pyte'
" molokai カラースキーム
NeoBundle 'tomasr/molokai'
" hybrid カラースキーム
NeoBundle 'w0ng/vim-hybrid'
" カラースキームの一覧表示
NeoBundle 'ujihisa/unite-colorscheme'
"
call neobundle#end()


" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck


"-------
" 全体設定
"-------
set nospell

" 画面表示設定
set number			" 行番号を表示する
set cursorline		" カーソル行の背景色を変える
set cursorcolumn	" カーソル位置のカラムの背景色を変える
set laststatus=2	" ステータス行を常に表示
set cmdheight=2		" メッセージ表示欄を2行確保
set showmatch		" 対応する括弧を強調表示
set helpheight=10	" ヘルプを画面いっぱいに開く
set list			" 不可視文字を表示
" 不可視文字の表示記号指定
set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set nowrap			" 自動折り返しを無効

set backspace=indent,eol,start
set foldmethod=marker

syntax on

" タブ設定
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

"---------
" tex config
"---------
let g:tex_flavor = "latex"
" augroup filetypedetect
"     autocmd! BufRead, BufNewFile *.tex setfiletype context
" augroup END
" augroup MyTeX
" 	autocmd!
" 	autocmd BufNewFile, BufRead *.tex :call s:mytex_config()
" augroup END
" function! s:mytex_config()
" 	set filetype=ConTeXt
" 	set spelllang=en,cjk
" 	set spell
" endfunction

"--------
" 拡張子でタブ幅を判別
"--------
"au BufNewFile,BufRead *.scala set nowrap tabstop=2 shiftwidth=2
augroup MyExtension
	autocmd!
	au bufnewfile,bufread *.py :call s:set_my_extension(4, 4, 0)
	au bufnewfile,bufread *.scala :call s:set_my_extension(2, 2, 1)
augroup END
" ts: tabstop size
" sw: shiftwidth
" xt: not 0 is expandtab, 0 is expandtab
function! s:set_my_extension(ts, sw, xt)
	let &tabstop = a:ts
	let &shiftwidth = a:sw
	if a:xt
		set expandtab
	else
		set noexpandtab
	endif
endfunction

"---------
" syntastic config
"---------
" syntastic
let g:syntastic_mode_map = {
\	'mode': 'passive',
\	'active_filetypes': ['scala', 'python'],
\}

"------------
" jedi-vim config
"------------
if neobundle#tap('jedi-vim') "{{{
    autocmd FileType python setlocal completeopt-=preview
    let s:hooks = neobundle#get_hooks("jedi-vim")
    function! s:hooks.on_source(bundle)
        " jediにvimの設定を任せると'completeopt+=preview'するので
        " 自動設定機能をOFFにし手動で設定を行う
        let g:jedi#auto_vim_configuration = 0
        " 
        let g:jedi#popup_on_dot = 0
        " 補完の最初の項目が選択された状態だと使いにくいためオフにする
        let g:jedi#popup_select_first = 0
        " quickrunと被るため大文字に変更
        let g:jedi#rename_command = '<Leader>R'
        " gundoと被るため大文字に変更 (2013-06-24 10:00 追記）
        let g:jedi#goto_assignments_command = '<Leader>G'
    endfunction

    call neobundle#untap()
endif "}}}

"autocmd Filetype python setlocal omnifunc=jedi#comletions
"if !exists('g:neocomplete#force_omni_input_patterns')
"	let g:neocomplete#force_omni_input_patterns = {}
"endif

"let g:neocomplete#force_omni_input_patterns.python = '\h\w*\|[^. \t]\.\w*'

"---------
" caw.vim settings
"---------
if neobundle#tap('caw.vim') "{{{
    nmap <Leader>c <Plug>(caw:i:toggle)
    vmap <Leader>c <Plug>(caw:i:toggle)
    call neobundle#untap()
endif "}}}

"---------
" quickrunの設定
"---------
if neobundle#tap('vim-quickrun') "{{{
	nmap <silent> <Leader>r <Plug>(quickrun)
	" nmap <silent> \r <Plug>(quickrun)
    let g:quickrun_config = {
    \	"_" : {
    \		"outputter/buffer/split" : ":botright 8sp",
    \	},
    \	'tex': {
    \		'type': 'tex/uptex'
    \	},
    \	'tex/ptex': {
    \		'command': 'ptex2pdf',
    \		'cmdopt': '-l -ot "-synctex=1 -file-line-error -interaction=nonstopmode"',
    \		'exec': ['%c %o %s', 'open %s:r.pdf']
    \	},
    \	'tex/bib': {
    \		'command': 'upbibtex',
    \		'exec': ['echo '.expand('%:r'), '%c '.expand('%:r')]
    \	},
    \	'tex/uptex': {
    \		'command': 'ptex2pdf',
    \		'cmdopt': '-u -l -ot "-synctex=1 -file-line-error"',
    \		'exec': ['%c %o %s', 'open %s:r.pdf']
    \	},
    \	'tex/eptex': {
    \		'command': 'ptex2pdf',
    \		'exec': ['%c -e -l -ot "-synctex=1" %s', 'open %s:r.pdf']
    \	},
    \   'haskell': {
    \       'type': 'haskell/sandbox/runghc'
    \   },
    \   'haskell/sandbox/runghc': {
    \		'command': 'runghc',
    \		'tempfile': '%{tempname()}.hs',
    \       'cmdopt': '-package-db --ghc-arg=../.cabal-sandbox/x86_64-linux-ghc-7.8.3-packages.conf.d',
    \		'exec': '%c -- %o %s'
    \   },
    \	'hoge': {
    \		'command': 'ls',
    \		'exec': ['which uplatex;echo $SHELL;echo $PATH']
    \   },
    \}
"   \		'exec': ['%c %o '. expand('%:t')]

    call neobundle#untap()
endif "}}}

"---------
" vimshell
"---------
if neobundle#tap('vimshell.vim') "{{{
    augroup vimrc
        autocmd FileType vimshell call s:vimshell_my_settings()
    augroup END
    function! s:vimshell_my_settings()
        "ESCでuniteを終了
        imap <buffer> <C-s> <Plug>(vimshell_hide)
    endfunction

    call neobundle#untap()
endif "}}}


"---------
" Unite config
"---------
if neobundle#tap('unite.vim') "{{{
    nnoremap <silent> sT :Unite tab<CR>
    nnoremap <silent> sb :Unite buffer_tab -buffer-name=file<CR>
    nnoremap <silent> sB :Unite buffer -buffer-name=file<CR>

    nnoremap [unite] nop
    nmap f [unite]

    nnoremap <silent> [unite]; :Unite command<CR>

	" Start insert.
	call unite#custom#profile('default', 'context', {
	\   'start_insert': 1
	\ })

	call unite#custom#profile('default', 'context', {
	\   'start_insert': 1,
	\   'winheight': 10,
	\   'direction': 'botright',
	\ })

    " noremap <silent> [unite]f :Unite file file_rec/async buffer file_mru<CR>

    "--------
    " ショートカットメニューの設定
    "--------
    noremap <silent> [unite]m :Unite menu:shortcut<CR>
    let g:unite_source_menu_menus = {
    \   "shortcut" : {
    \       "description" : "sample unite-menu",
    \       "command_candidates" : [
    \           ["unite-file-open", "UniteWithCurrentDir file file/new -buffer-name=files"],
    \           ["unite-file_mru", "Unite neomru/file"],
    \           ["vimshell", "VimShellCurrentDir -toggle -popup"],
    \           ["vimshell-tabnew", "VimShellTab"],
    \           ["edit vimrc", "tabe $MYVIMRC"],
    \           ["edit gvimrc", "tabe ~/.gvimrc"],
    \           ["Unite Beautiful Attack", "Unite -auto-preview colorscheme"],
    \           ["unite-output:message", "Unite output:message"],
    \       ],
    \   },
    \}

    call neobundle#untap()
endif "}}}
"" vimshell
"noremap <silent> ,os :VimShellCurrentDir -toggle -popup<CR>
"noremap <silent> ,ots :VimShellTab<CR>
"" unite
"noremap <silent> ,of :UniteWithCurrentDir file file/new -buffer-name=files<CR>

augroup MyAutoCd
	autocmd!
	au BufRead * :call s:change_file_directory()
	au BufNewFile * :call s:change_file_directory()
"	autocmd TabEnter * :call s:change_file_directory()
augroup END
function! s:change_file_directory()
    if expand('%') == ''
        return
    endif
	lcd %:h
endfunction

"---------
" 全体のマッピング設定
"---------
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

inoremap <silent> <C-j> <C-^>

nnoremap s <Nop>
nnoremap <silent> ss :split<CR>
nnoremap <silent> sv :vsplit<CR>

nnoremap sh <C-w>h
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sw <C-w>w

nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sR <C-w>R

nnoremap so <C-w>_<C-w>|
nnoremap s= <C-w>=
nnoremap s> <C-w>>
nnoremap s< <C-w><
nnoremap s+ <C-w>+
nnoremap s- <C-w>-

nnoremap <silent> st :tabnew<CR>
nnoremap sn gt
nnoremap sp gT

nnoremap <silent> sq :q<CR>
nnoremap <silent> sQ :bd<CR>

call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
call submode#map('bufmove', 'n', '', '>', '<C-w>>')
call submode#map('bufmove', 'n', '', '<', '<C-w><')
call submode#map('bufmove', 'n', '', '+', '<C-w>+')
call submode#map('bufmove', 'n', '', '-', '<C-w>-')

" 数字の増減"
nmap + <C-a>
nmap - <C-x>

" D, Cとの一貫性を保つ
nnoremap Y y$

" ポップアップメニューの高さ上限
set pumheight=10

"-----------
" 挿入モードの設定
"-----------
imap <silent> <C-@> <End>
imap <silent> <C-o> <Esc>o
" 補完の変更
inoremap <C-Space> <C-n>
inoremap <Nul> <C-n>
imap <C-n> <Nop>

"-----------------
" 行の移動・複製
"-----------------
" 下に移動・複製
imap <D-j> <ESC>_ddp<Insert>
imap <D-J> <ESC>_yyp<Insert>
map <D-j> _ddp
map <D-J> _yyp
 " 上に移動・複製
imap <D-k> <ESC>_dd<UP>P<Insert>
imap <D-K> <ESC>_yyP<Insert>
map <D-k> _dd<UP>P
map <D-K> _yyP

" 下に移動・複製
" imap <S-M-d> <ESC>_yyp<Insert>
" imap <C-d> <ESC>_ddp<Insert>
"  " 上に移動・複製
" imap <S-M-u> <ESC>_yyP<Insert>
" imap <C-u> <ESC>_dd<UP>P<Insert>

"-------------
" 括弧の補完設定
"-------------
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"vnoremap { "zdi{<C-R>z}<ESC>
"vnoremap [ "zdi[<C-R>z]<ESC>
"vnoremap ( "zdi(<C-R>z)<ESC>
"vnoremap " "zdi"<C-R>z"<ESC>
" 右移動で補完された括弧を飛ばす
"imap <C-l> <RIGHT>

"分割を含めた全体の一括終了(要Enter)
nmap Q :qa

"inoremap <expr> <C-h> &l:iminsert == 1 ? '<C-h>' : DeleteParenthesesAdjoin()

" 隣接している括弧の左括弧を消すと
" 右括弧も消えるようにする
"func! DeleteParenthesesAdjoin()
"	let pos = col(".") - 1
"	let str = getline(".")
"	let parentLList = ['(', '[', '\'', '\"', '{']
"	let parentRList = [')', ']', '\'', '\"', '}']
"	let cnt = 0
"
"	let output = ''
"
"	" カーソルが行末の場合
"	if pos == strlen(str)
"		return '\b'
"	endif
"	for c in parentLList
"		if str[pos-1] == c && str[pos] == parentRList[cnt]
"			call cursor(line("."), pos + 2)
"			let output = '\b'
"			break
"		endif
"		let cnt += 1
"	endfor
"	return output.'\b'
"endfunc

"----------
" AutoPairsの設定
"----------
"let g:AutoPairsFlyMode = 1
"let g:AutoPairsShortcutFastWrap = '<C-f>'

"-------------------------
" neocompleteの設定
"-------------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
if neobundle#tap('neocomplete.vim') "{{{
    " Disable AutoComplPop.
    let g:acp_enableAtStartup = 0
    " Use neocomplete.
    let g:neocomplete#enable_at_startup = 1
    " Use smartcase.
    let g:neocomplete#enable_smart_case = 1
    " Set minimum syntax keyword length.
    let g:neocomplete#sources#syntax#min_keyword_length = 3
    let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
    
    " Define dictionary.
    let g:neocomplete#sources#dictionary#dictionaries = {
        \ 'default' : '',
        \ 'vimshell' : $HOME.'/.vimshell_hist',
        \ 'scheme' : $HOME.'/.gosh_completions'
            \ }
    
    " Define keyword.
    if !exists('g:neocomplete#keyword_patterns')
        let g:neocomplete#keyword_patterns = {}
    endif
    let g:neocomplete#keyword_patterns['default'] = '\h\w*'
    
    " Plugin key-mappings.
    inoremap <expr><C-g>     neocomplete#undo_completion()
    inoremap <expr><C-l>     neocomplete#complete_common_string()
    
    " Recommended key-mappings.
    " <CR>: close popup and save indent.
    inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
    function! s:my_cr_function()
      return neocomplete#close_popup() . "\<CR>"
      " For no inserting <CR> key.
      "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
    endfunction
    " <TAB>: completion.
    inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
    " <C-h>, <BS>: close popup and delete backword char.
    inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
    inoremap <expr><C-y>  neocomplete#close_popup()
    inoremap <expr><C-e>  neocomplete#cancel_popup()
    " Close popup by <Space>.
    "inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
    
    " For cursor moving in insert mode(Not recommended)
    "inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
    "inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
    "inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
    "inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
    " Or set this.
    "let g:neocomplete#enable_cursor_hold_i = 1
    " Or set this.
    "let g:neocomplete#enable_insert_char_pre = 1
    
    " AutoComplPop like behavior.
    "let g:neocomplete#enable_auto_select = 1
    
    " Shell like behavior(not recommended).
    "set completeopt+=longest
    "let g:neocomplete#enable_auto_select = 1
    "let g:neocomplete#disable_auto_complete = 1
    "inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"
    
    " Enable omni completion.
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    "autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    "autocmd Filetype tex setlocal omnifunc=texcomplete#CompleteTags
    
    " Enable heavy omni completion.
    if !exists('g:neocomplete#sources#omni#input_patterns')
      let g:neocomplete#sources#omni#input_patterns = {}
    endif
    "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
    "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
    "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
    
    " For perlomni.vim setting.
    " https://github.com/c9s/perlomni.vim
    let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

    call neobundle#untap()
endif "}}}

"-------
" neosnippet config
"-------
if neobundle#tap('neosnippet.vim') "{{{
    " Plugin key-mappings.
    imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    xmap <C-k>     <Plug>(neosnippet_expand_target)
    
    " SuperTab like snippets behavior.
    imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: pumvisible() ? "\<C-n>" : "\<TAB>"
    smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
    \ "\<Plug>(neosnippet_expand_or_jump)"
    \: "\<TAB>"
    
    " For snippet_complete marker.
    if has('conceal')
      set conceallevel=2 concealcursor=i
    endif

    call neobundle#untap()
endif "}}}


if !has('gui_running')
    set t_ut=
    " set t_Co=256
    if filereadable(expand('$HOME/.gvimrc'))
        source $HOME/.gvimrc
    endif
endif
