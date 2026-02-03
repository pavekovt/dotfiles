" NeoBundle auto-installation and setup {{{
    call plug#begin()

    Plug 'preservim/nerdtree'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

    call plug#end()
" }}}

colorscheme catppuccin-mocha
" vim.cmd.colorscheme "catppuccin"

set number
set relativenumber

nnoremap <C-t> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
