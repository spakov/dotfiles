-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.title = true

opt.shell = 'pwsh.exe'
opt.shellcmdflag = '-NoLogo -NonInteractive -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[\'Out-File:Encoding\']=\'utf8\';$PSStyle.OutputRendering=\'plaintext\';Remove-Alias -Force -ErrorAction SilentlyContinue tee;'
opt.shellredir = '*>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
opt.shellpipe  = '*>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
opt.shellquote = ''
opt.shellxquote = ''

opt.wrap = true
opt.relativenumber = false
