require 'test/unit'
require_relative 'pokemon_main'
require_relative 'player_class'

class PokemonTest < Test::Unit::TestCase
    def test_left
      move = true
      assert_equal(@movement, true)
    end
end