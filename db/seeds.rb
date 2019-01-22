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

#drawing_1
drawing_one = Drawing.create(name:"Space Kitten",img:"https://www.clipartmax.com/png/middle/39-399672_a-transparent-space-cat-for-you-all-space-cat-drawing.png")
drawing_two = Drawing.create(name:"Amazon",img:"https://format-com-cld-res.cloudinary.com/image/private/s--hsAYqKnI--/c_limit,g_center,h_65535,w_1600/a_auto,fl_keep_iptc.progressive,q_95/v1/d32b435aac96df828362a61915473477/amazon_sketch.jpg")
drawing_three = Drawing.create(name:"Black Friday",img:"http://www.sketchplease.com/wp-content/sketches/archangelo-black-friday.jpg")
drawing_four = Drawing.create(name:"Ghostbusters",img:"https://www.drawingtutorials101.com/drawing-tutorials/Cartoon-Movies/Ghostbusters/ghostbusters-logo/how-to-draw-Ghostbusters-Logo-step-0.png")
#bets
bet1 = Bet.create(bet: "Everything You Say For The Next 15 Minutes Must Be Sung To The Tune Of “Happy Birthday")
bet2 = Bet.create(bet: "Smell The Feet Of Everyone In The Room And Rank Them From Best To Worst")
bet3 = Bet.create(bet: "Eat A Teaspoon Of Either Mustard, Soy Sauce Or Hot Sauce")
bet4 = Bet.create(bet: "Talk Without Closing Your Mouth")
bet5 = Bet.create(bet: "Call A Pizza Place And Ask If They Use Cruelty-Free Wheat In Their Dough")

#Users
mandy = User.create(name:"Mandy")
beau = User.create(name:"Beau")

#usergames
game1 = Game.create(bet_id:1, word_one_id:1,word_two_id:4,winner_id:1,loser_id:2,drawing_one_id:1,drawing_two_id:2)
game2 = Game.create(bet_id:2,word_one_id:3,word_two_id:5,winner_id:2,loser_id:1,drawing_one_id:3,drawing_two_id:4)
