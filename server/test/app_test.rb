require_relative "test_helper"

# require "YAML"
class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    AdventureGame
  end

#############----MIGRATION---###---TESTS----#####################

  def test_true_is_true
    assert true
  end

  def test_user_can_be_created
    e = User.create!(name: "Erik")
    assert "Erik", User.where(name: "Erik").take!
   end

  def test_if_piece_can_be_created
    Piece.create!
    assert_equal 1, Piece.find(1).id
  end

  def test_if_choice_can_be_created
    Choice.create!
    assert_equal 1, Choice.find(1).id
  end
  
def test_if_storyboard_can_be_created
    Storyboard.create!
    assert_equal 1, Choice.find(1).id
  end
##########----ENDPOINT----TESTS-----#########################
  #def test_homepage
    #response = get("/")
    #assert_match ("Welcome to our insane adventure game"), response.body
  #end

  #def test_secure_random
  #  response = post("/login")
  #  assert !false
  #end

  #def test_login_response_returns_correct_token
    #response = post "/login", name: "Erik"
    #payload = JSON.parse(response.body)

  #assert_equal User.last.token, payload["token"]
  #end

  # def test_can_get_users
  #   response = get "/users"
  #   payload = JSON.parse(response.body)
  #
  #   assert_equal Array, payload.class
  #   assert_equal "", payload.first["token"]
  # end

  #def test_get_adventure
  #  response = get "/adventure"
  #payload = JSON.parse(response.body)


  #  assert_equal payload.adventures, payload[0]
  #  assert_equal payload.adventures, payload.first
  #end



end
