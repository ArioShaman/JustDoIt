# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Category.create(body: "Programming")
#Category.create(body: "Policy")
#Category.create(body: "Nature")
#Category.create(body: "World")



#Post.create!(title: "Just title 5", description: "sads fds asd sdf afsdsdg  gds x",
	#content: "hdasfs gjfs dk asfdds jaskf safasf asfafaf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	#image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)


#Post.create!(title: "Just title 6", description: "sa1ds fds asd sdf afsdsdg  gds x",
	#content: "hdasfs gjfs dk asfdds jaskf safasf asfa1faf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	#image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)

#Post.create!(title: "Just title 7", description: "sa7ds fds asd sdf afsdsdg  gds x",
	#content: "hdasfs gjfs dk asfd7ds jaskf safasf asfafaf af asfd fa faf af afsdfsd fdfsdf dsfsdfsd fad",
	#image: "https://pp.userapi.com/c841134/v841134685/ec23/fMnhpOV-azM.jpg",categories_id: 2)

Tag.create!(body:"first tag")#id 1
Tag.create!(body:"code day")#id 2
Tag.create!(body:"completaly project")#id 3
Tag.create!(body:"Что-то на русском")#id 4
Tag.create!(body:"А как же политика?")#id 5
Tag.create!(body:"Love Python!!")#id 6
Tag.create!(body:"RoR a good tool")#id 7
Tag.create!(body:"Ohhh, angular is great")#id 8
Tag.create!(body:"I don't have an imagine")#id 9
Tag.create!(body:"Пора писать и кирилицей")#id 10
Tag.create!(body:"Я правда старался")#id 11
Tag.create!(body:"Но есть и костыли")#id 12
Tag.create!(body:"Поработую больше над основами angular")#id 13
Tag.create!(body:"Может быть мы встречались на хакатоне")#id 14
Tag.create!(body:"chemestry")#id 15
Tag.create!(body:"hackaton 47")#id 16
Tag.create!(body:"DSTU хакатон")#id 17
Tag.create!(body:"live in codding")#id 18
Tag.create!(body:"Example tag")#id 19

Tagging.create!(post_id: 7, tag_id: 3)
Tagging.create!(post_id: 7, tag_id: 11)
Tagging.create!(post_id: 7, tag_id: 12)
Tagging.create!(post_id: 7, tag_id: 8)
Tagging.create!(post_id: 7, tag_id: 7)
Tagging.create!(post_id: 7, tag_id: 6)
Tagging.create!(post_id: 7, tag_id: 15)

Tagging.create!(post_id: 6, tag_id: 14)
Tagging.create!(post_id: 6, tag_id: 5)
Tagging.create!(post_id: 6, tag_id: 1)
Tagging.create!(post_id: 6, tag_id: 9)

Tagging.create!(post_id: 1, tag_id: 7)
Tagging.create!(post_id: 1, tag_id: 16)
Tagging.create!(post_id: 2, tag_id: 19)
Tagging.create!(post_id: 2, tag_id: 17)
Tagging.create!(post_id: 3, tag_id: 13)
Tagging.create!(post_id: 3, tag_id: 7)
Tagging.create!(post_id: 1, tag_id: 5)