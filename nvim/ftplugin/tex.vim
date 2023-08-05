" set (continuous) compilation key
nmap <localleader>lc <Plug>(vimtex-compile)

" Use `update` to ensure document is saved before single-shot compilation
noremap <localleader>c <Cmd>update<CR><Cmd>VimtexCompileSS<CR>

" Don't open QuickFix for warning messages if no errors are present
let g:vimtex_quickfix_open_on_warning = 0

" Filter out some compilation warning messages from QuickFix display
let g:vimtex_quickfix_ignore_filters = [
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \ 'LaTeX Warning: .\+ float specifier changed to',
      \ 'LaTeX hooks Warning',
      \ 'Package siunitx Warning: Detected the "physics" package:',
      \ 'Package hyperref Warning: Token not allowed in a PDF string',
      \]

" Set pdf viewer to sioyek
let g:vimtex_view_method = 'sioyek'
