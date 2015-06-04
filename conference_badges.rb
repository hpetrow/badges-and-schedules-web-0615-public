# Write your code here.
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  badges = speakers.collect {|name| badge_maker(name)}
  badges
end

def assign_rooms(speakers)
  room_assignments = speakers.map.with_index {|s, i| "Hello, #{s}! You'll be assigned to room #{i+1}!"}
  room_assignments
end

def printer(speakers)
  badges = batch_badge_creator(speakers)
  room_assignments = assign_rooms(speakers)
  badges.each {|b| puts b}
  room_assignments.each {|a| puts a}
end