-- options.lua
local vim = vim
local api = vim.api
local fn = vim.fn
local cmd = vim.cmd
local opt = vim.opt

-- Attempt to determine the type of a file based on its name and possibly its contents
-- Use this to allow intelligent auto-indenting for each filetype,
-- and for plugins that are filetype specific.
cmd('filetype indent plugin on')

-- Enable syntax highlighting
cmd('syntax on')

-- Enable navigation to the next/previous line when reaching the end/start of a line
opt.whichwrap:append('<,>,[,]')

-- Set line numbers where 0 is the line you are currently on
opt.relativenumber = true

-- Better command-line completion
opt.wildmenu = true

-- Show partial commands in the last line of the screen
opt.showcmd = true

-- Instead of failing a command because of unsaved changes, instead raise a
-- dialogue asking if you wish to save changed files.
opt.confirm = true

-- Set the commands to save in history default number is 20.
opt.history = 1000

-- Indentation settings for using 4 spaces instead of tabs.
-- Do not change 'tabstop' from its default value of 8 with this setup.
opt.shiftwidth = 2 
opt.softtabstop = 2
opt.expandtab = true
opt.clipboard = 'unnamed,unnamedplus'
opt.autoindent = true   -- copy indent from current line when starting a new line
opt.smartindent = true  -- even better autoindent (e.g. add indent after '{')

