require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("one", 2, [])
  end

  def test_room_name
    assert_equal("one", @room.name)
  end





end
