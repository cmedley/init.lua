require('cmedley.set')
require('cmedley.remap')
require('cmedley.packer')

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.mix_format_on_save = 1

vim.g.gutentags_file_list_command = 'git ls-files; git ls-files --others --exclude-standard'
vim.g.gutentags_ctags_exclude = { '*.md' }
vim.g.gutentags_ctags_tagfile = 'gutentags'

