vim.g.sessions_dir = '~/.config/nvim/sessions'
-- vim.api.nvim_set_keymap('n', '<Leader>Sa', ':mks! ~/.config/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS> ')
-- vim.cmd("exec 'nnoremap <Leader>Sa :mks! ~/.config/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'")
-- vim.api.nvim_set_keymap('n', '<Leader>So', ':so ~/.config/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS> ')
-- vim.cmd("exec 'nnoremap <Leader>So :so ~/.config/nvim/sessions/*.vim<C-D><BS><BS><BS><BS><BS>'")

vim.cmd([[
    fu! SaveSess()
        execute 'mksession! ' . getcwd() . '/.session.vim'
    endfunction
    
    fu! RestoreSess()
        if filereadable(getcwd() . '/.session.vim')
            execute 'so ' . getcwd() . '/.session.vim'            
        endif
    endfunction
    
    autocmd VimLeave * call SaveSess()
    autocmd VimEnter * nested call RestoreSess()
]])