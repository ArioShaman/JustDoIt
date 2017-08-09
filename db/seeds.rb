# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create(body: "Programming")
Category.create(body: "Policy")
Category.create(body: "Nature")
Category.create(body: "World")



Post.create!(title: "Just title 5", description: "sads fds asd sdf afsdsdg  gds x",
	content: "hdasfs gjfs dk asfdds jaskf safasf asfafaf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)


Post.create!(title: "Just title 6", description: "sa1ds fds asd sdf afsdsdg  gds x",
	content: "hdasfs gjfs dk asfdds jaskf safasf asfa1faf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)

Post.create!(title: "Just title 7", description: "sa7ds fds asd sdf afsdsdg  gds x",
	content: "hdasfs gjfs dk asfd7ds jaskf safasf asfafaf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)



