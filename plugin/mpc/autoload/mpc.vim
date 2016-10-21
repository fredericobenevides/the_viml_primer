function! mpc#DisplayPlaylist()
  let cmd = "mpc --format '%position% %artist% / %album% / %title%' playlist"
  let playlist = split(system(cmd), '\n')

  " call append(0, playlist)

  " esse e a mesma coisa do append
  for track in playlist
    if(playlist[0] == track)
      execute "normal! 1GdGI" . track
    else
      call append(line('$'), track)
    endif
  endfor
endfunction

function! mpc#PlaySong(no)
  let song = split(getline(a:no), " ")
  let results = split(system("mpc --format '%title% (%artist%)' play "  . song[0]), "\n")

  let message = '[mpc] NOW PLAYING: ' . results[0]
  echomsg message
endfunction

function! mpc#GetPlaylist()
  let command = "mpc --format '%position% @%artist% @%album% @%title%' playlist"
  let [results, playlist] = [split(system(command), '\n'), []]
  let maxLengths = {'position': [], 'artist': [], 'album': []}

  for item in results
    call add(playlist, mpc#EncodeSong(item))
  endfor

  for track in playlist
    call add(maxLengths['position'], len(track.position))
    call add(maxLengths['artist'], len(track.artist))
    call add(maxLengths['album'], len(track.album))
  endfor

  call sort(maxLengths.position, "LargestNumber")
  call sort(maxLengths.artist, "LargestNumber")
  call sort(maxLengths.album, "LargestNumber")

  for track in playlist
    if(maxLengths.position[-1] + 1 > len(track.position))
      let track.position = repeat(' ',
            \ maxLengths.position[-1] - len(track.position))
            \ . track.position
    endif
    let track.position .= ' '
    let track.artist .= repeat(' ',
      \ maxLengths['artist'][-1] + 2 - len(track.artist))
    let track.album .= repeat(' ',
      \ maxLengths['album'][-1] + 2 - len(track.album))
  endfor

  return playlist
endfunction
