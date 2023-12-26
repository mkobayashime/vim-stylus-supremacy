function! stylusSupremacy#format(force) abort
  let l:options = './.vscode/settings.json'
  if !empty($VIM_STYLUS_SUPREMACY_OPTIONS_FILE)
    let l:options = $VIM_STYLUS_SUPREMACY_OPTIONS_FILE
  endif

  if filereadable('./.vscode/settings.json') && (a:force == v:true || g:stylus_supremacy_enabled == v:true)
    exec 'silent !yarn stylus-supremacy format --replace --options ' . l:options . ' ' . @%
    e
  endif
endfunction
