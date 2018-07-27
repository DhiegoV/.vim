
" line number
	" set number
	" set numberwidth=2
	" set relativenumber

set title

" mappings
	"pairs"
		inoremap "" ""<Esc>i
		inoremap '' ''<Esc>i
		inoremap () ()<Esc>i
		inoremap [] []<Esc>i
		inoremap {} {}<Esc>i

	"goto marker"
		inoremap çç <Esc>/<++><Enter>"_c4l
		inoremap ÇÇ <Esc>?<++><Enter>"_c4l
		nmap ç içç
		nmap Ç iÇÇ

	"html"
		autocmd FileType html noremap <F5> <Esc>:!qutebrowser<Space>%<Space>&<Enter>
		autocmd FileType html noremap <F6> <Esc>:!firefox<Space>%<Space>&<Enter>
		autocmd FileType html inoremap <S-Enter> <Esc>A<br/><Esc>O
		"complements"
			autocmd FileType html imap çc ><++><Esc>2T<"tyiw2f>a</<C-R>t>
			"complement at the same line"
			autocmd FileType html imap >> çcÇÇ
			"complement making a block"
			autocmd FileType html imap >; çc<Esc>?<++><Enter>i<Enter><Esc>f>a<Enter>ÇÇ
			"complement indenting block within tags"
			autocmd FileType html imap >. çc<Esc>?<++><Enter>i<Enter><Tab><Esc>f>a<Enter><BS>ÇÇ

		"shortcuts"
			autocmd FileType html imap çp <p>;
			autocmd FileType html imap çi <i>>
			autocmd FileType html imap çb <b>>
			autocmd FileType html inoremap = =""<++><Esc>F"i
			autocmd FileType html inoremap çt <input<Space>type="<++>"<++>/><Esc>?<input<Enter>

syntax on
" turn on filetype detection
filetype on
" load indent file for the detected filetype (if it has one)
filetype indent on

" tab width

" tab size
set tabstop=4
" << and >> shifts the value of tabstop in columns
set shiftwidth=0
" a <Tab> hit produces 1 tab char and not a bunch of <BS>
set noexpandtab

	set autoindent

