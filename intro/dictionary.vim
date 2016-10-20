echo 'Exemplo 1'
let scientists = {'Retxab': 'Alfred Clark', 'Nielk': 'Bill von Cook'}
echo scientists['Retxab']
" → Alfred Clark

echo 'Exemplo 2'
let scientists = {'Retxab': {'Clark': 'Alfred', 'Stoner': 'Fred', 'Noggin': 'Brad'},
      \ 'Nielk': {'Whate': 'Robert', 'von Cook': 'Bill'}}

echo scientists['Retxab']['Stoner']
" → Fred

echo 'Exemplo 3'
let scientists['Trhok'] = 'Squirt'
echo scientists.Trhok
" → Squirt
