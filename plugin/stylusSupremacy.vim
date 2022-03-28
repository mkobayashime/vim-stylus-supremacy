let g:stylus_supremacy_enabled = v:true

au BufWritePost *.styl call stylusSupremacy#format(v:false)

command! StylusSupremacy call stylusSupremacy#format(v:true)

command! StylusSupremacyEnable let g:stylus_supremacy_enabled = v:true
command! StylusSupremacyDisable let g:stylus_supremacy_enabled = v:false
