vim.g.which_key_fallback_to_native_key = 1
vim.g.which_key_display_names = {
    ['<CR>'] = '↵',
    ['<TAB>'] = '⇆',
    [' '] = '🚀',
}
vim.g.which_key_sep = '→'
vim.g.which_key_timeout = 100

local wk = require('whichkey_setup')

local keymap = {
    ['/'] = {'<Cmd>CommentToggle<CR>'                                                  , 'comment line'},
    ['.'] = {'<Cmd>e $MYVIMRC<CR>'                                                     , 'My VIMRC'},
    [';'] = {'<Cmd>Commands<CR>'                                                       , 'Show commands'},
    ['='] = {'<C-W>='                                                                  , 'Balance windows'},
    ['d'] = {'<Cmd>BufferClose<CR>'                                                    , 'Close buffer'},
    ['?'] = {'<Cmd>NvimTreeFindFile<CR>'                                               , 'Reveal current file'},
    ['e'] = {'<Cmd>NvimTreeToggle<CR>'                                                 , 'Toggle Explorer'},
    ['E'] = {'<Cmd>NvimTreeRefresh<CR>'                                                , 'Refresh Explorer'},
    ['r'] = {'<Cmd>Telescope file_browser<CR>'                                         , 'File Browser'},
    ['R'] = {'<Cmd>Telescope file_browser theme=get_dropdown<CR>'                      , 'Small File Browser'},
    ['f'] = {'<Cmd>Telescope current_buffer_fuzzy_find<CR>'                            , 'Fuzzy find current buffer'},
    ['h'] = {'<C-W>s'                                                                  , 'Split Vertical'},
    ['v'] = {'<C-W>v'                                                                  , 'Split Horizontal'},
    ['W'] = {'w'                                                                       , 'Write'},
    ['m'] = {'<Cmd>call WindowSwap#EasyWindowSwap()<CR>'                               , 'Swap Window'},
    ['P'] = {'<Cmd>Telescope project<CR>'                                              , 'Search Project'},
    ['p'] = {'<Cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>' , 'search files'},
    ['q'] = {'<Cmd>q<CR>'                                                              , 'quit'},
    ['o'] = {'<Cmd>Reload<CR>'                                                         , 'Reload Config'},
    ['O'] = {'<Cmd>Restart<CR>'                                                        , 'Restart Config'},
    ['T'] = {'<Cmd>set expandtab<CR> | <Cmd>retab<CR>'                                 , 'Convert tab to space'},
    [','] = {
        name  = '+emmet',
        [';'] = {'<Cmd><plug>(emmet-expand-word)<CR>'         , 'expand word'},
        [','] = {'<Cmd><Plug>(emmet-expand-abbr)<CR>'         , 'expand abbr'},
        ['/'] = {'<Cmd><plug>(emmet-toggle-comment)<CR>'      , 'toggle comment'},
        u     = {'<Cmd><plug>(emmet-update-tag)<CR>'          , 'update tag'},
        d     = {'<Cmd><plug>(emmet-balance-tag-inward)<CR>'  , 'balance tag in'},
        D     = {'<Cmd><plug>(emmet-balance-tag-outward)<CR>' , 'balance tag out'},
        n     = {'<Cmd><plug>(emmet-move-next)<CR>'           , 'move next'},
        N     = {'<Cmd><plug>(emmet-move-prev)<CR>'           , 'move prev'},
        i     = {'<Cmd><plug>(emmet-image-size)<CR>'          , 'image size'},
        j     = {'<Cmd><plug>(emmet-split-join-tag)'          , 'split join tag'},
        k     = {'<Cmd><plug>(emmet-remove-tag)'              , 'remove tag'},
        a     = {'<Cmd><plug>(emmet-anchorize-url)'           , 'anchorize url'},
        A     = {'<Cmd><plug>(emmet-anchorize-summary)'       , 'anchorize summary'},
        m     = {'<Cmd><plug>(emmet-merge-lines)'             , 'merge lines'},
        c     = {'<Cmd><plug>(emmet-code-pretty)'             , 'code pretty'},
        t     = {'<Cmd>TSBufDisable'                          , 'Treesitter disable current buffer'},
        T     = {'<Cmd>TSBufEnable'                           , 'Treesitter enable current buffer'}
    },
    a = {
        name = '+actions'                        ,
        c    = {'<Cmd>ColorizerToggle<CR>'       , 'Bracket Colorizer'},
        s    = {'<Cmd>let @/ = ""<CR>'           , 'Remove search highlight'},
        w    = {'<Cmd>StripWhitespace<CR>'       , 'Strip whitespace'},
        m    = {'<Cmd>MarkdownPreviewToggle<CR>' , 'Markdown preview'},
    },
    b = {
        name = '+buffers',
        d    = {'<Cmd>BufferClose<CR>'              , 'Close Buffer'},
        D    = {'<Cmd>BufferCloseAllButCurrent<CR>' , 'Close all but current'},
        s    = {'<Cmd>Dashboard<CR>'                , 'Dashboard'},
        p    = {'<Cmd>BufferPick<CR>'               , 'Pick buffer'},
        h    = {'<Cmd>BufferMovePrevious<CR>'       , 'Buffer move left'},
        l    = {'<Cmd>BufferMoveNext<CR>'           , 'Buffer move right'},
        b    = {'<Cmd>BufferOrderByDirectory<CR>'   , 'Buffer order by directory'},
        L    = {'<Cmd>BufferCloseBuffersRight<CR>'  , 'Close buffers on right'},
        H    = {'<Cmd>BufferCloseBuffersRight<CR>'  , 'Close buffers on left'},
    },
    D = {
        name = '+debug' ,
        b    = {'<Cmd>DebugToggleBreakpoint<CR>' , 'toggle breakpoint'},
        c    = {'<Cmd>DebugContinue<CR>'         , 'continue'},
        i    = {'<Cmd>DebugStepInto<CR>'         , 'step into'},
        o    = {'<Cmd>DebugStepOver<CR>'         , 'step over'},
        r    = {'<Cmd>DebugToggleRepl<CR>'       , 'toggle repl'},
        s    = {'<Cmd>DebugStart<CR>'            , 'start'},
    },
    F = {
    name = '+fold',
        ['O'] = {'<Cmd>set foldlevel=20<CR>' , 'open all'},
        ['C'] = {'<Cmd>set foldlevel=0<CR>'  , 'close all'},
        ['c'] = {'<Cmd>foldclose<CR>'        , 'close'},
        ['o'] = {'<Cmd>foldopen<CR>'         , 'open'},
        ['1'] = {'<Cmd>set foldlevel=1<CR>'  , 'level1'},
        ['2'] = {'<Cmd>set foldlevel=2<CR>'  , 'level2'},
        ['3'] = {'<Cmd>set foldlevel=3<CR>'  , 'level3'},
        ['4'] = {'<Cmd>set foldlevel=4<CR>'  , 'level4'},
        ['5'] = {'<Cmd>set foldlevel=5<CR>'  , 'level5'},
        ['6'] = {'<Cmd>set foldlevel=6<CR>'  , 'level6'}
    },
    s = {
        name  = '+search',
        b     = {'<Cmd>Telescope buffers<CR>'                   , 'Buffers'},
        ['.'] = {'<Cmd>Telescope filetypes<CR>'                 , 'filetypes'},
        d     = {'<Cmd>Telescope lsp_document_diagnostics<CR>'  , 'document_diagnostics'},
        D     = {'<Cmd>Telescope lsp_workspace_diagnostics<CR>' , 'workspace_diagnostics'},
        p     = {'<Cmd>Telescope find_files<CR>'                , 'files'},
        f     = {'<Cmd>Telescope current_buffer_fuzzy_find<CR>' , 'files'},
        h     = {'<Cmd>Telescope command_history<CR>'           , 'history'},
        i     = {'<Cmd>Telescope media_files<CR>'               , 'media files'},
        m     = {'<Cmd>Telescope marks<CR>'                     , 'marks'},
        M     = {'<Cmd>Telescope man_pages<CR>'                 , 'man_pages'},
        o     = {'<Cmd>Telescope vim_options<CR>'               , 'vim_options'},
        t     = {'<Cmd>Telescope live_grep<CR>'                 , 'Project wide search'},
        T     = {'<Cmd>Telescope grep_string<CR>'               , 'Current buffer search'},
        w     = {'<Cmd>Telescope file_browser<CR>'              , 'File Browser'},
        u     = {'<Cmd>Telescope colorscheme<CR>'               , 'colorschemes'},
        s     = {'<Cmd>call SearchString()<CR>'                 , 'Search a string'},
        S     = {'<Cmd>CtrlSFToggle<CR>'                        , 'Search a string toggle'},
        R     = {'<Cmd>help ctrlsf-options<CR>'                 , 'Show CtrlSF options'},
    },
    S = {
        name = '+Session',
        s    = {'<Cmd>Dashboard<CR>' , 'Dashboard'},
    },
    g = {
        name = '+git' ,
        b    = {'<Cmd>GitBlameToggle<CR>' , 'blame'},
        d    = {'<Cmd>DiffviewOpen<CR>'   , 'Diff view'},
        D    = {'<Cmd>DiffviewClose<CR>'  , 'Diff view close'},
    },
    l = {
        name = '+lsp',
        a    = {'<Cmd>Lspsaga code_action<CR>'                 , 'code action'},
        A    = {'<Cmd>Lspsaga range_code_action<CR>'           , 'selected action'},
        d    = {'<Cmd>Telescope lsp_document_diagnostics<CR>'  , 'document diagnostics'},
        D    = {'<Cmd>Telescope lsp_workspace_diagnostics<CR>' , 'workspace diagnostics'},
        f    = {'<Cmd>LspFormatting<CR>'                       , 'format'},
        v    = {'<Cmd>LspVirtualTextToggle<CR>'                , 'lsp toggle virtual text'},
        L    = {'<Cmd>Lspsaga show_line_diagnostics<CR>'       , 'line_diagnostics'},
        p    = {'<Cmd>Lspsaga preview_definition<CR>'          , 'preview definition'},
        q    = {'<Cmd>Telescope quickfix<CR>'                  , 'quickfix'},
        r    = {'<Cmd>Lspsaga rename<CR>'                      , 'rename'},
        T    = {'<Cmd>LspTypeDefinition<CR>'                   , 'type defintion'},
        x    = {'<Cmd>cclose<CR>'                              , 'close quickfix'},
        s    = {'<Cmd>Telescope lsp_document_symbols<CR>'      , 'document symbols'},
        S    = {'<Cmd>Telescope lsp_workspace_symbols<CR>'     , 'workspace symbols'},
        l    = {'<Cmd>LspTroubleToggle<CR>'                    , 'Lsp Trouble toggle'},
    },
    t = {
        name  = '+terminal',
        [';'] = {'<Cmd>FloatermNew --wintype=popup --height=6<CR>' , 'terminal'},
        g     = {'<Cmd>FloatermNew lazygit<CR>'                    , 'lazygit'},
        t     = {'<Cmd>FloatermToggle<CR>'                         , 'toggle'},
        y     = {'<Cmd>FloatermNew ytop<CR>'                       , 'ytop'},
    }
}

wk.register_keymap('leader', keymap)

-- VimScript
vim.cmd([[
    function! SearchString()
        call inputsave()
        let replacement = input('Enter a string: ')
        call inputrestore()
        execute 'CtrlSF '.replacement
    endfunction
]])
