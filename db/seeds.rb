User.destroy_all

pedro = User.new(
  name: "Pedro",
  email: "pedro@jmail.com",
  password: "123456"
  )

puts "#{pedro.name} created!" if pedro.save

Dimension.destroy_all

read = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[0],
  emoji: Dimension::STANDARD_EMOJIS[0]
  )

puts "#{read.emoji.capitalize} #{read.name.capitalize} created!" if read.save

exercise = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[1],
  emoji: Dimension::STANDARD_EMOJIS[1]
  )

puts "#{exercise.emoji.capitalize} #{exercise.name.capitalize} created!" if exercise.save

disconnect = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[2],
  emoji: Dimension::STANDARD_EMOJIS[2]
  )

puts "#{disconnect.emoji.capitalize} #{disconnect.name.capitalize} created!" if disconnect.save

work = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[3],
  emoji: Dimension::STANDARD_EMOJIS[3]
  )

puts "#{work.emoji.capitalize} #{work.name.capitalize} created!" if work.save

enjoy = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[4],
  emoji: Dimension::STANDARD_EMOJIS[4]
  )

puts "#{enjoy.emoji.capitalize} #{enjoy.name.capitalize} created!" if enjoy.save

love = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[5],
  emoji: Dimension::STANDARD_EMOJIS[5]
  )

puts "#{love.emoji.capitalize} #{love.name.capitalize} created!" if love.save

meditate = Dimension.new(
  name: Dimension::STANDARD_DIMENSIONS[6],
  emoji: Dimension::STANDARD_EMOJIS[6]
  )

puts "#{meditate.emoji.capitalize} #{meditate.name.capitalize} created!" if meditate.save
