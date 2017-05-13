set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"����Ϊ���������ʾ����,�Լ���Ӧ��������ʾ���˵���������  
set encoding=utf-8 " ����vim�ڲ�ʹ�õ��ַ�����,ԭ����cp936  
lang messages zh_CN.UTF-8 " ���consle�������   
"����˵�����   
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim  
   
set guifont=Consolas:h12:cANSI  
set guifontwide=kaiti:b:h13:cGB2312

set autoindent
set nobackup
set formatoptions+=mM
"set guifont=consolas:h11
set nu

set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

"for encoding
let fencview_autodetect=1
let fencview_auto_patterns='*.log,*.txt,*.tex,*.htm{l\=},*.asp'
                           \.',README,CHANGES,INSTALL'
let fencview_html_filetypes='html,aspvbs'

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

