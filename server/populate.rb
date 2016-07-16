


require_relative "lib/user"
require_relative "lib/piece"
require_relative "lib/choice"
require_relative "lib/storyboard"
require_relative "test/test_helper"

Storyboard.create!#(name: "Upon")
Storyboard.create!#(name: "Second")



Piece.create!(text: "This is the story of", storyboard_id: 1)
Piece.create!(text: "going to the mall and searching for red kittens", storyboard_id: 1)
Piece.create!(text: "eating oatmeal, blueberries and oranges", storyboard_id: 1)
Piece.create!(text: "My foot was caught in the oatmeal tree and I was really ", storyboard_id: 1)
Piece.create!(text: "playing binding pry but it returned no fun ", storyboard_id: 1)
Piece.create!(text: "because the dogs were eating the pigs slop", storyboard_id: 1)
Piece.create!(text: "The sky was a crystal blue", storyboard_id: 1)
Piece.create!(text: "we listen to the individuals who speak ", storyboard_id: 1)
Piece.create!(text: "Ted is talking. ", storyboard_id: 1)
Piece.create!(text:"This is a story about Lily", storyboard_id: 2)
Piece.create!(text:"Does lily like pineapples?", storyboard_id: 2)
Piece.create!(text:"Lily does not live in a pineapple under the sea", storyboard_id: 2)
Piece.create!(text:"What would happen if Lily didn't like pineapples", storyboard_id: 2)
Piece.create!(text:"Are pineapples apples? ", storyboard_id: 2)
Piece.create!(text:"This story is getting redundant isnt it", storyboard_id: 2)
Piece.create!(text:"Why dont we move to another story", storyboard_id: 2)
Piece.create!(text:"What would a woodchuck chuck chuck, if a woodchuck could chuck wood? (not Lily thats for sure)", storyboard_id: 2)
Piece.create!(text:"Toungue twisters aren't Lily's special suit either", storyboard_id: 2)
Piece.create!(text:"And that was the story of Lily, the most asanine story ever", storyboard_id: 2)
