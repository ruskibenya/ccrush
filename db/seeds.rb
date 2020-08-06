# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.save([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.save(name: 'Luke', movie: movies.first)

puts "cleaning db"
Meeting.destroy_all
Event.destroy_all
User.destroy_all

puts "😉 heyyyy Avital"
puts "creating seeds now"

puts "let's create some users"
puts "creating user one"

user_one = User.new({
  email: "test@test.com",
  first_name: "Benjamin",
  last_name: "Aronov",
  location: "Tel Aviv",
  dob: "February 6, 1992",
  bio: "I'm too lazy to keep typing motorcycle collection my beard it's huge. I attract girls who are very good-looking when I get drunk playing devil's advocate I'm too lazy to keep typing or so I've been told, friendzone that was a joke, by the way females you need a real man work hard play hard. Ultramarathons well-built that just proves my point I'm too honest I have an IQ of 140, which means MFA. \nEverything destructive that I do I'm really good at if you like my profile when I get drunk. I'm a nice guy crying in my bathtub I hope there are good girls left I may be somewhat jaded younger women, wildly attractive doesn't hurt ages 18 - 22 you need a real man size 2 if I make fun of you it's because I like you. Dive bars pics on request full-contact I love the smell of finishing my novel with lots of self-respect.",
  gender: "male",
  looking_for: "female",
  password: "123456"
})

user_one.save!

puts "creating user two!"

user_two = User.new({
  email: "test2@test.com",
  first_name: "Avital",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "female",
  looking_for: "male",
  password: "123456"
})

user_two.save!

puts "creating user three!"

user_three = User.new({
  email: "molly@test.com",
  first_name: "Molly",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "female",
  looking_for: "male",
  password: "123456"
})

user_three.save!


puts "creating user four!"


user_four = User.new({
  email: "emily@test.com",
  first_name: "Emily",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "female",
  looking_for: "male",
  password: "123456"
})

user_four.save!

puts "creating user 5!"

user_five = User.new({
  email: "abby@test.com",
  first_name: "Abby",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "female",
  looking_for: "male",
  password: "123456"
})

user_five.save!


puts "creating user 6!"

user_six = User.new({
  email: "matt@test.com",
  first_name: "Matt",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "male",
  looking_for: "female",
  password: "123456"
})

user_six.save!


puts "creating user 7!"

user_seven = User.new({
  email: "john@test.com",
  first_name: "John",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "male",
  looking_for: "female",
  password: "123456"
})

user_seven.save!

puts "creating user 8!"

user_eight = User.new({
  email: "kevin@test.com",
  first_name: "Kevin",
  last_name: "Tzubeli",
  location: "Tel Aviv",
  dob: "July 30, 1991",
  bio: "Shooting I do well dating it's very hard to meet quality women years ago I discovered. The fact that you are even considering schooling me pics on request younger women I enjoy someone to provide for you, I don't really keep a budget performance art other shenanigans you should message me you will love it. MFA performance art Ayn Rand I love the smell of most cats eventually love me I'm the last of a dying breed. \nNo robots posing as real people laughing hysterically The Game a fairly successful career in sports. If that paragraph above turned you off a fairly successful career in sports a fairly successful career in sports I won't bite without permission finishing my novel, but I only smoke when drinking dive bars P90X I don't really read much these days wildly attractive doesn't hurt. Working on my screenplay I am a hoarder, but only of top shelf stuff throwing rocks at trains shooting I enjoy I hope there are good girls left.",
  gender: "male",
  looking_for: "female",
  password: "123456"
})

user_eight.save!

puts "creating admin user!"

user_admin = User.new({
  email: "admin@test.com",
  password: "123456"
})

puts "creating some events"

puts "creating event one"
event_one = Event.new({
  date: DateTime.new(2020, 8,3.75),
  subscribers: [user_three, user_four, user_five],
  publishers: [user_six, user_seven, user_eight],
  user: user_admin
})


puts "creating event two"
event_two = Event.new({
  date: DateTime.new(2020, 8,3.75),
  subscribers: [user_three, user_four, user_five],
  publishers: [user_six, user_seven, user_eight],
  user: user_admin
})

puts "creating event three"
event_three = Event.new({
  date: DateTime.new(2020, 8,3.75),
  subscribers: [user_three, user_four, user_five],
  publishers: [user_six, user_seven, user_eight],
  user: user_admin
})

puts "creating some meetings!"

puts "creating meeting #1!"
meeting_one = Meeting.new({
  liked: true,
  user_id: user_one.id,
  crush: user_three
})

meeting_one.save!

puts "creating meeting #2!"
meeting_two = Meeting.new({
  liked: true,
  user_id: user_one.id,
  crush: user_four
})

meeting_two.save!

puts "creating meeting #3!"
meeting_three = Meeting.new({
  liked: true,
  user_id: user_one.id,
  crush: user_five
})

meeting_three.save!

