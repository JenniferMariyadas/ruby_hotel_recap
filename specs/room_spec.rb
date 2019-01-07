require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Conor")
    @guest2 = Guest.new("Keith")
    @guest3 = Guest.new("Cassia")
    @room = Room.new("one", 2, [])
    @room2 = Room.new("two", 1, [@guest1])
  end

  def test_room_name
    assert_equal("one", @room.name)
  end

  def test_capacity
    assert_equal(2, @room.capacity)
  end

  def test_guests_getter
    assert_equal([], @room.guests)
  end

  def test_can_count_guest__empty
    assert_equal(0, @room.guest_count)
  end


  def test_can_count_guest__not_empty
    assert_equal(1, @room2.guest_count)
  end

  def test_can_add_guest
    @room.add_guest(@guest2)
    assert_equal("Keith", @room.guests[0].name)
  end

  def test_can_remove_guest
    @room.add_guest(@guest2)
    @room.remove_guest(@guest2)
    assert_equal([], @room.guests)
  end

  def test_can_empty_room
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    @room. empty_room
    assert_equal([], @room.guests)
  end

end
