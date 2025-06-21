local opt = vim.opt

-- Looks.
opt.number = true
opt.relativenumber = true
opt.wrap = false
opt.termguicolors = true
opt.showmode = false
opt.signcolumn = 'yes'
opt.cursorline = true
opt.laststatus = 0

-- Indentation.
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Navigation.
opt.splitright = true
opt.splitbelow = true
opt.mouse = 'a'
opt.backspace = 'indent,eol,start'

-- Searching.
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- History.
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv('HOME') .. '/.local/share/nvim/undotree'

-- Wrapping.
opt.textwidth = 80
opt.formatoptions = 'c'

-- Endings.
opt.fileformat = 'unix'
opt.fileformats = 'unix'
opt.fixendofline = true
