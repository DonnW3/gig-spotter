# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dan = User.create!(email: "daniel.simon123@gmail.com", password: "password", birthday: Date.parse("1991-11-26"))
bob = User.create!(email: 'bob@bob.com', password: "iambob", birthday: Date.parse("1991-11-26"))

users = [donnie, dan, bob]

band_attributes = [
 {band_name: 'Palm', bandcamp_url: "https://palmnewyork.bandcamp.com/", genre: 'Experimental Rock', band_bio: "Experimental rock band from New York", band_image: "https://f4.bcbits.com/img/0012386298_10.jpg"},
 {band_name: 'Frankie Cosmos', bandcamp_url: 'hhttps://ingridsuperstar.bandcamp.com/', genre: 'indie rock', band_image: 'https://f4.bcbits.com/img/a1643878260_10.jpg'},
 {band_name: 'Luge', bandcamp_url: 'https://hugeluge.bandcamp.com/', genre: 'experimental', band_image: 'https://f4.bcbits.com/img/a3480225868_10.jpg' }
]

band_attributes.each_with_index do |attribute, index|
  band = Band.create(attribute)
  users[index].update(band_id: band.id)
end

booker_attributes = [
 {organization_name: "Show Mom", booker_bio: "SMC's goal is to create safer spaces at shows and online so that people who book, play and attend DIY shows can have someone to talk to about issues with DIY spaces. We want people who don't normally feel safe, for whatever reason, at shows to feel like someone hears them and has their back. It is a network that prioritizes the safety of women, people of color and anybody who is marginalized in this community. We don't support oppressive behavior in our spaces.", booker_image: "https://scontent.fbed1-1.fna.fbcdn.net/v/t1.0-9/13445586_1620434018268140_7382114931131813689_n.jpg?_nc_cat=108&_nc_ht=scontent.fbed1-1.fna&oh=5604b7d05c0ed6e7471c696e1cd5fcea&oe=5C87988D"},
 {organization_name: 'Illegally Blind', booker_bio: 'My goal is to help create a more united local music scene regardless of genre.  For info, message me on here or email  me: illegallyblindpresents AT gmail DOT com. The most important thing to becoming a part of any scene is to start by showing up and meeting people.', booker_image: 'https://scontent.fbed1-1.fna.fbcdn.net/v/t1.0-9/12249679_452985094892596_7530096251759886439_n.jpg?_nc_cat=105&_nc_ht=scontent.fbed1-1.fna&oh=caf84a2240ee32cef8378314a8820b69&oe=5C428603'},
 {organization_name: 'Coach & Sons Olde Time Family Booking', booker_bio: 'If you book them, they will come" Since 2012. coachandsons@gmail.com', booker_image: 'https://scontent.fbed1-2.fna.fbcdn.net/v/t1.0-9/15079067_1548296415184176_2222191785159733202_n.jpg?_nc_cat=107&_nc_ht=scontent.fbed1-2.fna&oh=9277caadd7a7be514345fd6335cdcd6c&oe=5C70882C'  }
]
booker_attributes.each_with_index do |attribute, index|
  booker = Booker.create(attribute)
  users[index].update(booker_id: booker.id)
end
