"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => The most relevant keybindigs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent><C-s>     :w<cr>
nmap <silent><leader>w :w<cr>
nmap <silent><leader>q :bd<cr>
nmap <silent><leader>Q :q!<cr>
nmap <silent>Q :bd<cr>

" j+k or k+j escapes insert mode
imap jk <ESC>
imap kj <ESC>

" Toggle highlight when <leader><cr> is pressed
map <silent><expr> <leader><cr> (&hls && v:hlsearch ? ':set nohlsearch' : ':set hls')."\n"

" Quickly open vim config file
map <silent><leader>e :e! $MYVIMRC<cr>

" Jumb back to last buffer
map <silent><leader>6 <c-^><cr>

" Open a new empty tab
map <silent><leader>T :tabe<cr>

" Open a new empty horizontal pane
map <silent><leader>- :new<cr>

" Open a new empty vertical pane
map <silent><leader>_ :vnew<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Shortcutting split navigation, saving a keypress:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap split navigations to just CTRL +hjkl
map <silent><C-h> <C-w>h
map <silent><C-j> <C-w>j
map <silent><C-k> <C-w>k
map <silent><C-l> <C-w>l

" Same but using the leader, you can't hold down this key, what a shame
nmap <silent><leader>h :wincmd h<cr>
nmap <silent><leader>j :wincmd j<cr>
nmap <silent><leader>k :wincmd k<cr>
nmap <silent><leader>l :wincmd l<cr>

" Split configurations
nmap <silent> <C-Left>  :vertical resize +3<CR>
nmap <silent> <C-Right> :vertical resize -3<CR>
nmap <silent> <C-Up>    :resize +3<CR>
nmap <silent> <C-Down>  :resize -3<CR>

" Always move down with vim keys even in soft-lines
noremap <expr> j v:count ? 'j' : 'gj'
noremap <expr> k v:count ? 'k' : 'gk'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap <silent><leader>r :call VisualSelection('replace', '')<CR>

vmap <silent><leader>gr gd[{V%::s/<C-R>///gc<left><left><left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function Calls
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>ipdb :call InsertIpdbLine()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Useful mappings to make search results appear in the middle of the screen
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
