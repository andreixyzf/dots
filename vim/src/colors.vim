
function! Colors()
  colorscheme retrobox

  " Transparent background
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE

  " Line numbers
  highlight LineNrAbove guifg=#a89984
  highlight LineNr guifg=#d79921
  highlight LineNrBelow guifg=#a89984

  highlight SpecialKey guifg=#32302f guibg=NONE
  highlight ColorColumn guibg=#3c3836
  highlight StatusLine guibg=#665c54 guifg=#ebdbb2 gui=NONE cterm=NONE

  " I like yellow
  highlight Visual guibg=#282828 guifg=#d79921
  highlight Cursor guibg=#282828 guifg=#d79921
  highlight iCursor guibg=#282828 guifg=#d79921
  highlight rCursor guibg=#282828 guifg=#d79921

  " Make popup menus have a proper color:
  highlight Pmenu guibg=#665c54 guifg=#ebdbb2
  highlight PmenuSel guibg=#7c6f64 guifg=#ebdbb2

  highlight PmenuExtra guibg=#665c54 guifg=#ebdbb2
  highlight PmenuExtraSel guibg=#7c6f64 guifg=#ebdbb2

  highlight PmenuKind guibg=#665c54 guifg=#ebdbb2
  highlight PmenuKindSel guibg=#7c6f64 guifg=#ebdbb2

  highlight PmenuMatch guibg=#665c54 guifg=#ebdbb2
  highlight PmenuMatchSel guibg=#7c6f64 guifg=#d79921

  highlight PmenuSbar guibg=#665c54 guifg=#ebbdb2
  highlight PmenuCondit guibg=#665c54 guifg=#ebbdb2
  highlight PmenuProc guibg=#665c54 guifg=#ebbdb2
endfunction

call Colors()
