echo 'Exemplo 1'
let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Squid']
echo animalKingdom

echo 'Exemplo 2'
call add(animalKingdom, 'Penguin')
echo animalKingdom

echo 'Exemplo 3'
call remove(animalKingdom, 3)
call insert(animalKingdom, 'Octopus', 3)
echo animalKingdom[3]
echo animalKingdom

echo 'Exemplo 4'
let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Octopus', 'Squid']
echo animalKingdom
echo sort(animalKingdom)
echo animalKingdom

echo 'Exemplo 5'
let animalKingdom = ['Crocodile', 'Lizard', 'Bug', 'Octopus', 'Squid']
echo animalKingdom
echo sort(copy(animalKingdom))
echo animalKingdom

echo 'exemplo 6'
let animalkingdom = ['frog', 'rat', 'crocodile', 'lizard', 'bug', 'octopus', 'penguin']
let forest = animalkingdom[0:2]
echo forest

echo 'exemplo 6'
let animalkingdom = ['frog', 'rat', 'crocodile', 'lizard', 'bug', 'octopus', 'penguin']
let forest = animalkingdom[0:-1]
echo forest
