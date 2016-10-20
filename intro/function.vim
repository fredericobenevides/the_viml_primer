function! EchoQuote()
  echo 'A poet can but ill spare time for prose.'
endfunction

function! EchoQuote()
  let quote = 'A poet can but ill spare time for prose.'
  echo quote
endfunction

function! EchoQuote(quote)
  echo a:quote
endfunction
call EchoQuote('A poet can but ill spare time for prose.')

function! EchoQuote(quote, ...)
  let year = a:1
  let author = a:000[1]
  echo 'In ' . year . ', ' . author . ' said: "' . a:quote . '"'
endfunction

call EchoQuote('A poet can but ill spare time for prose.', '1784', 'William Cowper')
