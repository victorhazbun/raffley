# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Raffley.Repo.insert!(%Raffley.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Raffley.Repo
alias Raffley.Raffles.Raffle

%Raffle{
  prize: "Autographed Jersey",
  description: """
  Step up, sports fans! This is your golden opportunity to own an iconic piece of sports history. This authentic sports jersey is signed by one of the legends of the game.
  """,
  ticket_price: 2,
  status: :open,
  image_path: "/images/jersey.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Coffee With A Yeti",
  description: """
  Are you ready for a 'chill' coffee date that's straight out of legend? This is a whimsically unique opportunity to sit down with the elusive Yeti, the fabled guardian of the mountains. Subject to Yeti's availability and mood.
  """,
  ticket_price: 3,
  status: :upcoming,
  image_path: "/images/yeti-coffee.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Vintage Comic Book",
  description: """
  Don't miss out on this highly sought-after vintage comic book. It features some of the most iconic characters ever drawn and a story that has captivated audiences for generations.
  """,
  ticket_price: 1,
  status: :closed,
  image_path: "/images/comic-book.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Exclusive Dinner for Two",
  description: """
  Indulge in an unforgettable dining experience! This isn't just a meal; it's a symphony of flavors and a feast for the senses. Whet your appetite for gourmet excellence and get your ticket now.
  """,
  ticket_price: 3,
  status: :open,
  image_path: "/images/dinner-for-two.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Cooking Class",
  description: """
  Unleash your inner chef with this immersive cooking class experience! This hands-on class is not only an opportunity to learn new cooking techniques but also a chance to indulge in the joy of crafting and tasting exquisite dishes.
  """,
  ticket_price: 2,
  status: :open,
  image_path: "/images/cooking-class.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Basketball Game Tickets",
  description: """
  Whether you're a die-hard basketball fan or looking for a fun, new experience, these tickets are your shot to an unforgettable evening. Get up close and personal with the thrill of the game!
  """,
  ticket_price: 3,
  status: :upcoming,
  image_path: "/images/basketball-tickets.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Gourmet Chocolate Basket",
  description: """
  Chocolate connoisseurs, prepare for a journey of indulgence with this luxurious basket of gourmet chocolates. This handpicked assortment showcases a variety of premium chocolates from world-renowned chocolatiers.
  """,
  ticket_price: 1,
  status: :closed,
  image_path: "/images/chocolate-basket.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Pet Photography Session",
  description: """
  Immortalize the joy and personality of your beloved pet with a professional photography session. Cherish your furry, scaly, or feathered friend's moments at a park, beach, or your own background.
  """,
  ticket_price: 2,
  status: :open,
  image_path: "/images/pet-photo.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Swamp Boat Ride",
  description: """
  This swamp boat ride is your ticket to a wild day out! Enjoy an unforgettable journey filled with incredible wildlife, stunning landscapes, and a few surprises (🐊😳) along the way.
  """,
  ticket_price: 3,
  status: :upcoming,
  image_path: "/images/swamp-boat-ride.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Drive a Real Race Car",
  description: """
  Adrenaline junkies and speed seekers, get ready for the ride of your life! Here's your chance to get behind the wheel of a genuine race car and unleash its power on a professional racing track.
  """,
  ticket_price: 3,
  status: :upcoming,
  image_path: "/images/race-car.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Gourmet Coffee Experience",
  description: """
  Coffee connoisseurs, this sleek coffee pot accompanied by a selection of fine, assorted coffees from around the world will elevate your morning ritual. Whether you're a fan of a robust espresso, a smooth cappuccino, or a delicate pour-over, this package will delight your palate.
  """,
  ticket_price: 2,
  status: :closed,
  image_path: "/images/coffee.jpg"
}
|> Repo.insert!()

%Raffle{
  prize: "Hot Air Balloon Ride",
  description: """
  Take to the skies for an unforgettable adventure with an exclusive hot air balloon ride over the breathtaking the Wildlife Refuge. Glide above exotic animals and witness nature's beauty from a truly unique perspective.
  """,
  ticket_price: 1,
  status: :upcoming,
  image_path: "/images/balloon-ride.jpg"
}
|> Repo.insert!()
