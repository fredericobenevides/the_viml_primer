echo 'Exemplo 1'
let bees = 32
let mice = 4

if bees < 1
  echo 'I suppose the mice keep the bees out--'
elseif mice < 1
  echo '--or the bees keep the mice out.'
else
  echo 'I don''t know which.'
endif

echo 'Exemplo 2'
set ignorecase

let farewell = 'We love you. Ebenezer!'
echo toupper(farewell)
" → WE LOVE YOU. EBENEZER!

function! CheckCase(normal, upper)
  return a:normal == a:upper ? 'Equal.' : 'Not equal.'
endfunction

:echo CheckCase(farewell, toupper(farewell))
" → Equal.

echo 'Exemplo 3'
:set noignorecase
:echo CheckCase(farewell, toupper(farewell))
" → Not Equal.

echo 'Exemplo 4'
echo  "Comparing values using ==#"
function! CheckCaseSensitive(normal, upper)
  if a:normal ==# a:upper
    return 'Equal (case sensitive).'
  else
    return 'Not Equal (case sensitive).'
  endif
endfunction
:echo CheckCaseSensitive(farewell, toupper(farewell))

echo 'Exemplo 5'
echo  "Comparing values using ==?"
function! CheckCaseInsensitive(normal, upper)
  if a:normal ==? a:upper
    return 'Equal (case insensitive).'
  else
    return 'Not Equal (case insensitive).'
  endif
endfunction
:echo CheckCaseInsensitive(farewell, toupper(farewell))
