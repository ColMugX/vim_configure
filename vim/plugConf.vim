" Settings
nnoremap <Leader>pi :PlugInstall<Cr>
nnoremap <Leader>pc :PlugClean<Cr>
nnoremap <Leader>pu :PlugUpdate<Cr>

" Color & Scheme
let g:airline_theme='onedark'
colorscheme onedark

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" rainbow
let g:rainbow_active=1

" nerdtree
nnoremap <Leader>ft :NERDTreeToggle<Cr>
let NERDTreeShowHidden=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" ale
let g:ale_linter_aliases = {
  \ 'javascript.jsx': 'javascript',
  \ 'jsx': 'javascript',
  \ 'react.typescript': 'typescript',
  \ }
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['tslint'],
  \ 'scss': ['stylelint'],
  \ 'elm': ['elm-format'],
  \ }
let g:ale_fixers = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['prettier', 'tslint'],
  \ 'scss': ['prettier', 'stylelint'],
  \ 'elm': ['elm-format'],
  \ 'python': ['yapf'],
  \ 'rust': ['rustfmt']
  \ }
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 1
nmap <silent> <Leader>af <Plug>(ale_fix)

" supertab
let g:SuperTabDefaultCompletionType = "<c-n>"

" tagbar
nnoremap <leader>tt :TagbarToggle<Cr>

" vim-trailing-whitespace
nmap <silent> <leader><space><space> :FixWhitespace<cr>

" jsdoc
nmap /** :JsDoc<CR>

" emmet
imap <C-e> <Space><BS><plug>(emmet-expand-abbr)
let g:user_emmet_settings = {
  \ 'javascript.jsx' : {
  \   'extends' : 'jsx',
  \  },
  \ }

" ultisnips
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" complete (deoplete)
let g:deoplete#enable_at_startup = 1
let g:deoplete#max_menu_width = 60
let g:deoplete#auto_completion_start_length = 1


" LanguageClient
let g:LanguageClient_autoStart = 1
nnoremap <silent> <leader>lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>lr :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <leader>lc :call LanguageClient_contextMenu()<CR>

let g:LanguageClient_serverCommands = {
  \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
  \ 'typescript': ['typescript-language-server', '--stdio'],
  \ 'react.typescript': ['typescript-language-server', '--stdio'],
  \ 'javascript': ['typescript-language-server', '--stdio'],
  \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
  \ }

" autocmd(plugin)
autocmd BufRead,BufNewFile *.tsx setlocal filetype=react.typescript
autocmd BufRead,BufNewFile *.jsx setlocal filetype=javascript.jsx
autocmd BufRead,BufNewFile *.styl setlocal filetype=stylus.css

" javascript
let javascript_enable_domhtmlcss = 1

" javascript-libraries-syntax
let g:used_javascript_libs = 'underscore,jquery,react'

" jsx-pretty
let g:vim_jsx_pretty_enable_jsx_highlight = 1
let g:vim_jsx_pretty_colorful_config = 1

" closetag
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.jsx,*.html.erb,*.md,*.vue'

" nerdcommenter
let g:NERDSpaceDelims=1
let g:NERDDefaultNesting = 1
let g:NERDCustomDelimiters = {
  \ 'clojure': {
    \ 'left': ';;'
  \ }
\ }

" vim-surround
nmap <silent> ,, ysiw
nmap <silent> ,. cs

" denite
nnoremap <silent> <leader>bb :<C-u>Denite buffer<Cr>
nnoremap <silent> <leader>bf :<C-u>Denite file/rec<Cr>
call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>', 'noremap')

" winresizer
let g:winresizer_start_key = '<Leader>r'

" python
let g:deoplete#sources#jedi#python_path = '/usr/local/bin/python3'
