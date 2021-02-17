User.destroy_all
Event.destroy_all


10.times do
gus = User.create(email: Faker::Internet.email,
 	password: "password")
end


10.times do
ev = Event.create(title: Faker::Cannabis.cannabinoid,
	desc: Faker::ChuckNorris.fact,
	date: Faker::Date.forward(90),
	time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now))
end