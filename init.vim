"=============== Neovim specifics ===================

let g:python3_host_prog='/usr/local/bin/python3'
let g:python3_host_skip_check = 1

" =============== Plug Initialization ===============

call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'tpope/vim-fugitive'

Plug 'neovim/nvim-lspconfig'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'skywind3000/asyncrun.vim'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'fatih/vim-go'

Plug 'Xuyuanp/scrollbar.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'terrortylor/nvim-comment'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'sheerun/vim-polyglot'

" Build the extra binary if cargo exists on your system.
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }

"Plug 'nvim-lualine/lualine.nvim'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'phaazon/hop.nvim'

Plug 'jreybert/vimagit'

Plug 'ray-x/lsp_signature.nvim'
"Plug 'kyazdani42/nvim-web-devicons' " for file icons
"Plug 'kyazdani42/nvim-tree.lua'

Plug 'ibhagwan/fzf-lua'
Plug 'vijaymarupudi/nvim-fzf'

" For luasnip users.
" Plug 'L3MON4D3/LuaSnip'
" Plug 'saadparwaiz1/cmp_luasnip'

" For ultisnips users.
" Plug 'SirVer/ultisnips'
" Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" For snippy users.
" Plug 'dcampos/nvim-snippy'
" Plug 'dcampos/cmp-snippy'

" Plug 'glepnir/galaxyline.nvim'

Plug 'matze/vim-move'
Plug 'uarun/vim-protobuf'
Plug 'ntpeters/vim-better-whitespace'

Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

set number
set completeopt=menu,menuone,noselect

autocmd BufWritePre *.go lua vim.lsp.buf.formatting()
autocmd BufWritePre *.go lua goimports(1000)

"============ vim-better-whitespace =================

let g:better_whitespace_enabled=1   "Enable highlighting whitespaces
let g:strip_whitespace_on_save=1    "When I hit save, then strip all unnecessary white spaces

"=============== General ============================
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"

"set termguicolors
"colorscheme molokai
colorscheme gruvbox
set background=dark

"let g:gruvbox_contrast_light='hard'

set completeopt-=preview        "Make this lways off because this drives me insane
set completeopt+=noselect
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon1              "Disable cursor blink
set noerrorbells                "No annoying sounds on errors
set novisualbell
set textwidth=80               "Maximum columns to be inserted
"set colorcolumn=80             "Assign the vertical lign to be at a certain column position
set clipboard=unnamed           "Make the same clipboard with the OS
set laststatus=2
set number
"set list                        "Display hidden characters
"set listchars=tab:▸\ ,eol:¬     "Use listchars like in textmate
set mouse=a                     "Enable mouse support, forgive me vim father because I have sin
set t_vb=
set tm=500
set autowrite                   "Write file when switching buffers
set formatoptions=qrnj1
set fileformats=unix,dos,mac
set updatetime=300              "Smaller updatetime for CursorHold & CursorHoldI
set bomb
set binary
set ffs=unix,dos,mac            "Use Unix as the standard file type
let $LANG='en'                  "Avoid garbled characters in Chinese language windows OS
set langmenu=en
set showmatch                   "Show matching brackets when text indicator is over them
set lazyredraw                  "Don't redraw while executing macros (good performance config)
set magic                       "For regular expressions turn magic on
set mat=2                       "How many tenths of a second to blink when matching brackets
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden
" I type Wq more often than wq
cmap Wq wq
"cmap W w
set undofile
set undodir=/tmp                "Don't use xdg path use this instead

set smartindent                 "Do smart autoindenting when starting a new line
set softtabstop=4               "Number of spaces that a <Tab> counts for while performing editing ops
set shiftwidth=4
set tabstop=4                   "Number of spaces that a <Tab> in the file counts for
set expandtab                   "Use the appropiate number of spaces to insert a <Tab> in insert mode

filetype plugin on              "Enable filetype plugins
filetype indent on

set lbr                         "Linebreak on 500 characters
set wrap                        "Enable wrap mode

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
"
" ================ Search ===========================

" Always when search ignore casing for down case characters
nnoremap / /\v
vnoremap / /\v
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default<Plug>_

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowritebackup
set nowb

" ================ Completion =======================

set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif<Plug>

"================= Mapping ==========================
" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader="\\"
let maplocalleader = "\\"
inoremap <c-f> <c-x><c-f>
vnoremap <c-/> :TComment<cr>
vmap < <gv
vmap > >gv
let g:move_key_modifier = 'C'
map <Leader>z :bprev<Return>
map <Leader>x :bnext<Return>
map <Leader>c :bd<Return>
nnoremap <C-p> :FZF<cr>

" Fast saving
nmap <leader>w :w!<cr>
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nmap <Leader>o :setlocal spell! spelllang=en_us<CR>

let no_buffers_menu=1

" Better vertical movement for wrapped lines
nnoremap j gj
nnoremap k gk

" quickly cancel search highlighting
nnoremap <leader><space> :nohlsearch<cr>

" Toggle between column widths
nnoremap <leader>f :call ToggleColumnWidth()<cr>
let g:wide_column = 1
function! ToggleColumnWidth()
    if g:wide_column
        set textwidth=80
        set colorcolumn=80
        let g:wide_column = 0
    else
        set textwidth=110
        set colorcolumn=110
        let g:wide_column = 1
    endif
endfunction

"lua <<EOF
"-- following options are the default
"-- each of these are documented in `:help nvim-tree.OPTION_NAME`
"require'nvim-tree'.setup {
"  disable_netrw       = false,
"  hijack_netrw        = false,
"  open_on_setup       = false,
"  ignore_ft_on_setup  = {},
"  auto_close          = false,
"  open_on_tab         = false,
"  hijack_cursor       = false,
"  update_cwd          = false,
"  update_to_buf_dir   = {
"    enable = true,
"    auto_open = true,
"  },
"  diagnostics = {
"    enable = false,
"    icons = {
"      hint = "?",
"      info = "?",
"      warning = "?",
"      error = "?",
"    }
"  },
"  update_focused_file = {
"    enable      = false,
"    update_cwd  = false,
"    ignore_list = {}
"  },
"  system_open = {
"    cmd  = nil,
"    args = {}
"  },
"  filters = {
"    dotfiles = false,
"    custom = {}
"  },
"  view = {
"    width = 30,
"    height = 30,
"    hide_root_folder = false,
"    side = 'left',
"    auto_resize = false,
"    mappings = {
"      custom_only = false,
"      list = {}
"    }
"  }
"}

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  local golang_setup = {
    on_attach = function(client, bufnr)
      require "lsp_signature".on_attach()  -- Note: add in lsp client on-attach
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    end,
    capabilities = capabilities
  }

  require('lspconfig')['gopls'].setup(golang_setup)

  function goimports(timeoutms)
    local context = { source = { organizeImports = true } }
    vim.validate { context = { context, "t", true } }

    local params = vim.lsp.util.make_range_params()
    params.context = context

    -- See the implementation of the textDocument/codeAction callback
    -- (lua/vim/lsp/handler.lua) for how to do this properly.
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeout_ms)
    if not result or next(result) == nil then return end
    local actions = result[1].result
    if not actions then return end
    local action = actions[1]

    -- textDocument/codeAction can return either Command[] or CodeAction[]. If it
    -- is a CodeAction, it can have either an edit, a command or both. Edits
    -- should be executed first.
    if action.edit or type(action.command) == "table" then
      if action.edit then
        vim.lsp.util.apply_workspace_edit(action.edit)
      end
      if type(action.command) == "table" then
        vim.lsp.buf.execute_command(action.command)
      end
    else
      vim.lsp.buf.execute_command(action)
    end
  end

  vim.api.nvim_set_keymap('n', '<c-P>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true })
EOF

"lua << END
"require'lualine'.setup {
"  options = {
"    icons_enabled = true,
"    theme = 'nightfly',
"    component_separators = { left = '?', right = '?'},
"    section_separators = { left = '?', right = '?'},
"    disabled_filetypes = {},
"    always_divide_middle = true,
"  },
"  sections = {
"    lualine_a = {'mode'},
"    lualine_b = {'branch', 'diff',
"                  {'diagnostics', sources={'nvim_lsp', 'coc'}}},
"  lualine_c = {
"    {
"      'filename',
"      file_status = true, -- displays file status (readonly status, modified status)
"      path = 2 -- 0 = just filename, 1 = relative path, 2 = absolute path
"    }
"    },
"    lualine_x = {'encoding', 'fileformat', 'filetype'},
"    lualine_y = {'progress'},
"    lualine_z = {'location'}
"  },
"  inactive_sections = {
"    lualine_a = {},
"    lualine_b = {},
"    lualine_c = {'filename'},
"    lualine_x = {'location'},
"    lualine_y = {},
"    lualine_z = {}
"  },
"  tabline = {},
"  extensions = {}
"  }
"END

augroup ScrollbarInit
autocmd!
autocmd CursorMoved,VimResized,QuitPre * silent! lua require('scrollbar').show()
autocmd WinEnter,FocusGained           * silent! lua require('scrollbar').show()
autocmd WinLeave,BufLeave,BufWinLeave,FocusLost            * silent! lua require('scrollbar').clear()
augroup end

lua <<EOF
require("nvim-treesitter.configs").setup {
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = {
    enable = false
  },
  highlight = {
    enable = true,
  },
}

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true}
EOF

lua <<EOF
require'hop'.setup()

-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('nvim_comment').setup()
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fl <cmd>Telescope git_files<cr>

"nnoremap <leader>tt :NvimTreeToggle<CR>
"nnoremap <leader>tr :NvimTreeRefresh<CR>
"nnoremap <leader>tn :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them
"
" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

"" NERDTree configuration
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeShowBookmarks=1
let g:nerdtree_tabs_focus_on_files=1
let g:NERDTreeMapOpenInTabSilent = '<RightMouse>'
let g:NERDTreeWinSize = 50
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.db,*.sqlite
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

"set autochdir

set clipboard+=unnamedplus
autocmd VimResized * wincmd =
autocmd FileType fugitive nmap <buffer> q gq
set scrollback=100000

:set number

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

