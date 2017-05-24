# bee = Bee.new(
#        name: "Honey Queen Bee",
#        price: 20,
#        image: "https://www.wired.com/wp-content/uploads/2015/08/GettyImages-71666555.jpg",
#        description: "She lays eggs."
#               )
# bee.save 

# bee = Bee.new(
#                 name: "Honey Worker Bee",
#                 price: 5,
#                 image: "http://bee-pollen-health.com/Worker-Bees-Top.jpg",
#                 description: "These ladies are guards, nurses, and forage"
#               )
# bee.save

# bee = Bee.new(
#                 name: "Honey Drone Bee",
#                 price: 1,
#                 image: "http://typesofbees.info/wp-content/uploads/2014/07/types-of-bee-drone-bee.jpg",
#                 description: "They are supposed to mate with the queen and die at the end of summer. BOY BYE"

#               )
# bee.save

# bee = Bee.new(
#                 name: "African Bee",
#                 price: 60,
#                 image: "http://www.goldenoak.org/safety-training-library/africanized-honey-bees/",
#                 description: "Very aggressive breed of honey bee, RUN."
# )
# bee.save

# bee = Bee.new(
#                 name: "Bubble Bee",
#                 price: 15,
#                 image: "https://a-z-animals.com/media/animals/images/original/bumble_bee3.jpg",
#                 description: "This bee lives alone and in the ground, it will live for one season."
# )
# bee.save


# Image.create!([
#               {
#                 name: "",
#                 url: "",
#                 bee_id: 
#               }

#   ])

CategoryBee.create!([
                        {category_id: 1, bee_id: 1},
                        {category_id: 1, bee_id: 2},
                        {category_id: 2, bee_id: 2},
                        {category_id: 2, bee_id: 3},
                        {category_id: 3, bee_id: 1},
                        {category_id: 3, bee_id: 2},
                        {category_id: 3, bee_id: 3}
                        ])

