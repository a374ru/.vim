"-=-=-=-=-=-=-=-=-=-
" воскресенье, 10 апреля 2022 г. 14:36:35
"-=-=-=-=-=-=-=-=-=-"

filetype plugin on

" nnoremap k gk 
" nnoremap gk k 
" nnoremap j gj 
" nnoremap gj j

" Получение пути текущей директории
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

 map <F2> <S-O>"-=-=-=-=-=-=-=-=-=-<C-m>"<C-R>=strftime("%c")<CR><C-m>"-=-=-=-=-=-=-=-=-=-<Esc>
 map <F3> :!git add -A; git commit -m "777 - стабильный код."<CR>
 " map <F4> :!swift % <CR>
 " map <F5> :!tsc % <CR>
 " map <F6> :!node ~/dev/aprakos/main/aprakos.js <CR>
 set nocp "Режим совместимости с vi (отключение) ystm
 set expandtab
 set autoindent

 set laststatus=2
 set statusline=%f%m%r%h%w\ \  
 set statusline +=%{FugitiveStatusline()}
 set statusline +=\ \ b\%n
 set statusline +=%=
 set statusline +=\ \ %2l\ %2c\ [%2p%%]
 " set showtabline=1
 set list
 " set lcs=tab:>-,trail:_
 " set showbreak=\ \ \ 

 set encoding=utf-8
 " set keymap=russian-jcukenmac
 " set spell
 " set spelllang=en,ru
 " setlocal spellfile=~/.vim/spell/ru.utf-8.add
 " setlocal spellfile+=~/.vim/spell/term.utf-8.add
 set helplang=ru,en
 set number
 set hlsearch
 " set wrap
 set guifont=Menlo:h19
 set lines=60
 set columns=133
 set linebreak
 set hidden
 set ruler
 set rnu
 set autowriteall
 set winheight=45
 set textwidth=80
 set cmdheight=2  "ch

 " -=-=-=-=-=-=-=-=-=-=-=-=-=-= 
 " my map leader 
 " -=-=-=-=-=-=-=-=-=-=-=-=-=-=
 let mapleader=" "
 map <Leader> <Plug>(easymotion-prefix)
 " noremap <Leader>w :w<cr>
 "map <C-n> :NERDTreeToggle<cr>
 inoremap <C-k> <C-c>
 inoremap <C-f> <C-n>
 " inoremap <leader>l <C-^>

 map <leader>§ :so%<cr>
 map <leader><Space> :
 nmap gm :LivedownToggle<CR>
 nmap gC :Git commit -am "Auto commiting…"<CR>
 nmap gL :Git clog<CR>
 nmap gS :Git status<CR>
 map <leader>pp :!open %<CR><CR>
 nnoremap <leader>] :NERDTree<CR><CR>
 nnoremap <leader>\ :NERDTreeToggle<CR><CR>

 " -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
 call plug#begin('~/.vim/plugged')
 " -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

 Plug 'tpope/vim-fugitive'
 Plug 'vim-scripts/vim-auto-save'
 Plug 'airblade/vim-gitgutter'
 Plug 'shime/vim-livedown'
 Plug 'easymotion/vim-easymotion'
 Plug 'leafgarland/typescript-vim'
 Plug 'tpope/vim-sensible'
 Plug 'tpope/vim-surround'
 Plug 'tpope/vim-commentary'
 " Plug 'apple/swift'
 Plug 'mhartington/oceanic-next'
 " Plug 'arcticicestudio/nord-vim'
 " Plug 'toyamarinyon/vim-swift'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'jiangmiao/auto-pairs'
 Plug 'vim-syntastic/syntastic'
 " post install (yarn install | npm install) then load plugin only for editing supported files
 Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

 Plug 'dense-analysis/ale'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree'

 Plug 'curist/vim-angular-template'
 Plug 'burnettk/vim-angular'



 "-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
 call plug#end()

" colorscheme wombat256mod
colorscheme OceanicNext

let g:jellybeans_overrides = {
\    'Todo': { 'guifg': 'cccccc', 'guibg': 'f0f000',
 \              'ctermfg': 'Black', 'ctermbg': 'Yellow',
 \              'attr': 'bold' },
 \    'Comment': { 'guifg': '666666' },
 \}

 " Настройка встроенного проводника Vim.
 " =-=-=-=-=-=-=-=-=-=-=-=-=
 " let g:netrw_banner = 0
 " let g:netrw_liststyle =  2
 " let g:netrw_browse_split = 4
 " let g:netrw_altv = 0
 " let g:netrw_winsize = 14

 " aug ProjectDrawer
 " autocmd!
 " autocmd VimEnter * :Vexplore
 " aug END

 " autocmd vimenter * nerdtree   " открыть проводник при запуске Vim
 " let NERDTreeQuitOnOpen = 1

 " Настройка автосохранения плагина vim-auto-save
 " =-=-=-=-=-=-=-=-=-=-=-=-=
let g:auto_save = 1
let g:auto_save_in_insert_mode = 2
let g:auto_save_no_updatetime = 1
let g:auto_save_silent = 1


" Строка статуса airline
" =-=-=-=-=-=-=-=-=-=-=-=
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline_statusline_ontop = 2
let g:airline_theme='zenburn'

" Alelint complete
" let g:ale_set_balloons = 1
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tslint'],
" \}

" if !exists("autocommands_loaded")
"         let autocommands_loaded = 1
"         aug ystm
"                 au BufRead *.ystm 0 r /Users/ibo7/.ystm/000.ystm
"                 au BufRead *.ystm normal `[3gcc`]o
"                 au BufRead *.rux set nu
"         aug END
" endif
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}
