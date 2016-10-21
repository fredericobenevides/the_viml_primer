function! mpc#GetPlaylist()
  let command = "mpc --format '%position% @%artist% @%album% @%title%' playlist"
  let [results, playlist] = [split(system(command), '\n'), []]
  let maxLengths = {'position': [], 'artist': [], 'album': []}
