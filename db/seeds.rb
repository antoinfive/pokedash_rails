
antoin = Trainer.create(name: "Antoin", username: "twan", password: "bruh")
steven = Trainer.create(name: "Steven", username: "Steve", password: "beef")
kaylee = Trainer.create(name: "Kaylee", username: "ksquared", password: "bruh")
sophie = Trainer.create(name: "Sophie", username: "SophieD", password: "sophieforpresident")
josh = Trainer.create(name: "Josh", username: "JoshinSince89?", password: "red")

15.times do
  Trainer.create(name: Faker::Name.name, username: Faker::Internet.user_name, password: Faker::Internet.password)
end


bulbasaur = Pocketmonster.create(name: "Bulbasaur", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/001.png')
squirtle = Pocketmonster.create(name: "Squirtle", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/007.png')
charmander = Pocketmonster.create(name: "Charmander", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/004.png')
pikachu = Pocketmonster.create(name: "Pikachu", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/025.png')
ninetails = Pocketmonster.create(name: "Ninetales", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/038.png')
charizard = Pocketmonster.create(name: "Charizard", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/006.png')
mew = Pocketmonster.create(name: "Mew", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/151.png')
mewtwo = Pocketmonster.create(name: "Mewtwo", image_url: 'http://assets22.pokemon.com/assets/cms2/img/pokedex/full/150.png')
