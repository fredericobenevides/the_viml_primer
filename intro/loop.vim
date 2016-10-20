echo 'Exemplo 1'
let animalKingdom = ['Crocodile', 'Bug', 'Octopus', 'Penguin']

while len(animalKingdom) > 0
  echo animalKingdom[0] . ' Friend'
  call remove(animalKingdom, 0)
endwhile
" → Crocodile Friend
"   Bug Friend
"   Octopus Friend
"   Penguin Friend

echo 'Exemplo 2'
let scientists = ['Robert Whate', 'Bill Cook', 'Brad Noggin', 'Squirt']

for scientist in scientists
  echo 'Dr. ' . scientist
endfor
" → Dr. Robert Whate
"   Dr. Bill Cook
"   Dr. Brad Noggin
"   Dr. Squirt
