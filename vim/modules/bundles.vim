" Die early if this Vim install is built with tiny or small.
" We don't want a Raspberry Pi, for example, running all of these.
if !1 | finish | endif

" Load NeoBundle commands and star the package list.
set runtimepath +=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand(Dot('bundle/')))
NeoBundleFetch 'Shougo/neobundle.vim'

" Load bundle list for NeoBundle to manage.
execute 'source' Dot('bundles.vim')

" Finish NeoBundle configuration.
call neobundle#end()
filetype plugin indent on

" Load bundle configuration files for currently sourced bundles.
for f in split(glob(Dot('modules/bundles/*.vim')), '\n')
  let bundle = fnamemodify(f, ':t:r')
  if neobundle#is_installed(bundle) && neobundle#is_sourced(bundle)
    execute 'source' f
  endif
endfor