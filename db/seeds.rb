# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Games
word_one = Word.create(name:"Space Kitten")
word_two = Word.create(name:"Pikachu")
word_three = Word.create(name:"Ghostbusters")
word_four = Word.create(name:"Amazon")
word_five = Word.create(name:"Black Friday")
word_six = Word.create(name:"Paul Ryan")
word_seven = Word.create(name:"Mulan")
word_eight = Word.create(name:"Pirate")
word_nine = Word.create(name:"Software Engineer")
word_ten = Word.create(name:"Star Wars")



#Users
mandy = User.create(name:"Mandy")
beau = User.create(name:"Beau")

#usergames
game1 = Game.create(bet_id:1, word_id_1:1,word_id_2:4,winner_id:1,loser_id:2)
game2 = Game.create(bet_id:2,word_id_1:3,word_id_2:5,winner_id:2,loser_id:1)

#bets
bet1 = Bet.create(bet: "Everything You Say For The Next 15 Minutes Must Be Sung To The Tune Of “Happy Birthday")
bet2 = Bet.create(bet: "Smell The Feet Of Everyone In The Room And Rank Them From Best To Worst")
bet3 = Bet.create(bet: "Eat A Teaspoon Of Either Mustard, Soy Sauce Or Hot Sauce")
bet4 = Bet.create(bet: "Talk Without Closing Your Mouth")
bet5 = Bet.create(bet: "Call A Pizza Place And Ask If They Use Cruelty-Free Wheat In Their Dough")
