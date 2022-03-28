function! stylusSupremacy#format(force) abort
  if filereadable('./.vscode/settings.json') && (a:force == v:true || g:stylus_supremacy_enabled == v:true)
    exec 'silent !yarn stylus-supremacy format --replace --options ./.vscode/settings.json ' . @%
    e
  endif
endfunction
