class Room

attr_reader :name, :capacity, :guests

def initialize(name, capacity, guests)
   @name = name
   @capacity = capacity
   @guests = guests
end

def guest_count
  return @guests.length
end

def add_guest(guest)
  @guests.push(guest)
end

def remove_guest(guest)
  @guests.delete(guest)
end

def empty_room
  #@guests = []
  while guest_count() > 0
    @guests.pop
  end
end

end
