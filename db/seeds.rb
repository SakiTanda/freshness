# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.first_or_create([
  {id:1, name:'Vegetables'},
  {id:2, name:'Meats'},
  {id:3, name:'Dairy products'},
])

Place.first_or_create([
  {id:1, name:'Refrigeraor'},
  {id:2, name:'Freezer'},
  {id:3, name:'Room temperature'},
])

Food.first_or_create([
  {id:1, name:'Lettuce', picture:'Lettuce.JPG', category_id:1},
  {id:2, name:'Broccoli', picture:'Broccoli.JPG', category_id:1},  
  {id:3, name:'Beef', picture:'beef.jpg', category_id:2},
  {id:4, name:'Apple', picture:'Apple.JPG', category_id:1},
  {id:5, name:'Orange', picture:'Orange.JPG', category_id:1},
  {id:6, name:'Leek', picture:'Leek.JPG', category_id:1},
  {id:7, name:'Green Pepper', picture:'Greenpepper.JPG', category_id:1},
  {id:8, name:'Tomato', picture:'Tomato.JPG', category_id:1},
  {id:9, name:'Ginger', picture:'Ginger.JPG', category_id:1},
  {id:10, name:'Chinese Cabbage', picture:'Chinesecabbage.JPG', category_id:1},
  {id:11, name:'Onion', picture:'Onion.JPG', category_id:1},
  {id:12, name:'Egg', picture:'egg.jpg', category_id:3},
  {id:13, name:'Cheese', picture:'Cheese.jpg', category_id:3},
  {id:14, name:'Milk', picture:'Milk.jpg', category_id:3},
  {id:15, name:'Cream', picture:'Cream.jpg', category_id:3},
  {id:16, name:'Butter', picture:'Butter.jpg', category_id:3},  
  {id:17, name:'Lamb', picture:'lamb.jpg', category_id:2},  
  {id:18, name:'Pork', picture:'pork.jpg', category_id:2},  
  {id:19, name:'Salmon', picture:'salmon.jpg', category_id:2},  
  {id:20, name:'Chicken', picture:'chicken.jpg', category_id:2},  

])

Period.first_or_create([
# food_id: 1 -------------------------
  {id:1, days:7, picture:'Lettuce1.JPG', food_id:1, place_id:1, detail:'1. Do not cut the lettuce
2. Dry and wrap it in paper towel
3. Store it in a plastic bag in refrigerator'},
  {id:2, days:14, picture:'Lettuce2.JPG', food_id:1, place_id:2, detail:'1. Shred the lettuce
2. Wash and dry it 
3. Store it in a plastic bag in freezer'},
# food_id: 2 -------------------------
  {id:3, days:3, picture:'Broccoli1.JPG', food_id:2, place_id:1, detail:'1. Wash the broccoli
2. Loosely wrap the broccoli in damp paper towels
3. Store it in the refrigerator'},
  {id:4, days:30, picture:'Broccoli2.JPG', food_id:2, place_id:2, detail:'1. Cut the broccoli into smaller pieces
2. Boil them for three minutes
3. Dump them into ice-cold water
4. Drain and dry them
5. Store them in a plastic bag in freezer'},
# food_id: 3 -------------------------
  {id:5, days:2, picture:'beef1.jpg', food_id:3, place_id:1, detail:'1. slices into the quantity of each time you want to eat
2. get a good tight wrap of plastic wrap around it and store in the bottom of your fridge'},
  {id:6, days:180, picture:'beef2.jpg', food_id:3, place_id:2, detail:'1. Wrap by rap
2. Put into freezer as soon as possible'},
# food_id: 4 -------------------------
  {id:7, days:14, picture:'Apple1.JPG', food_id:4, place_id:1, detail:'1. Store the Apple in a plastic bag
(or at room tempeture out of direct sunlight)
2. Put it into a refrigerator'},
  {id:8, days:30, picture:'Apple2.JPG', food_id:4, place_id:2, detail:"1. Slice the apple
2. Place them on a cookie sheet
3. Put them into a freezer
4. When they're frozen, store them in a plastic bag"},
# food_id: 5 -------------------------
  {id:9, days:14, picture:'Orange1.JPG', food_id:5, place_id:1, detail:'1. Store the Orange in a refrigerator 
(or at room tempeture out of direct sunlight)'},
  {id:10, days:28, picture:'Orange2.JPG', food_id:5, place_id:2, detail:"1. Store the orange in any way in a freezer"},
# food_id: 6 -------------------------
  {id:11, days:7, picture:'Leek1.JPG', food_id:6, place_id:1, detail:'1. Wrap the leek in damp paper towels
2. Store the Leek in a plastic bag
3. Put it into a refrigerator'},
  {id:12, days:30, picture:'Leek2.JPG', food_id:6, place_id:2, detail:"1. Wash, dry and slice the leek
2. Store them in a plastic bag
3. Put them in a freezer"},
# food_id: 7 -------------------------
  {id:13, days:7, picture:'Greenpepper1.JPG', food_id:7, place_id:1, detail:'1. Dry it well
2. Put it into a seal bag
3. Not fresh one should be removed from the bag
4. Put into a fridge'},
  {id:14, days:30, picture:'Greenpepper2.JPG', food_id:7, place_id:2, detail:"1. Cut into a half
2. Remove stem end and inside of it
3. Put it into a seal bag or wrap it 
4. Put it into a freezer"},
# food_id: 8 -------------------------
  {id:15, days:7, picture:'Tomato1.JPG', food_id:8, place_id:1, detail:'1. Put the tomato in a sealable plastic bag
2. Seal the bag
(suck out as much excess air as possible)
3. Put it in a fridge'},
  {id:16, days:30, picture:'Tomato2.JPG', food_id:8, place_id:2, detail:"1. Put the tomato in a sealable plastic bag
2. Seal the bag
(suck out as much excess air as possible) 
3. Put it in a freezer"},
# food_id: 9 -------------------------
  {id:17, days:10, picture:'Ginger1.JPG', food_id:9, place_id:3, detail:'1. Put the ginger in a sealable plastic bag
2. Seal the bag
(suck out as much excess air as possible)
3. Place it in dark place in a room'},
  {id:18, days:30, picture:'Ginger2.JPG', food_id:9, place_id:2, detail:"1. Put the ginger in a sealable plastic bag 
2. Seal the bag
(suck out as much excess air as possible)
3. Put it in a Fridge"},
# food_id: 10 -------------------------
  {id:19, days:7, picture:'Chinesecabbage1.JPG', food_id:10, place_id:3, detail:'1. Wrap it by newspaper or a plastic wrap
2. Place it in the dark place in a room'},
  {id:20, days:21, picture:'Chinesecabbage2.JPG', food_id:10, place_id:2, detail:"1. Wrap it by newspaper or a plastic wrap
2. Put it into fridge"},
# food_id: 11 -------------------------
  {id:21, days:7, picture:'Onion1.JPG', food_id:11, place_id:3, detail:'1. Wrap it one by one by newspaper
2. Place it in the dark place in a room'},
  {id:22, days:14, picture:'Onion2.JPG', food_id:11, place_id:2, detail:'1. Slice or chop it into small pieces
2. Put it into sealable bag
3. Put it into freezer'},
# food_id: 12 -------------------------
  {id:23, days:40, picture:'egg1.jpg', food_id:12, place_id:1, detail:"1. Put eggs in an airtight bag 
(2-5 degree)
2. Blunt side up and sharp side down
3. Don’t ever wash eggs"},
# food_id: 13 -------------------------
  {id:24, days:180, picture:'Cheese1.jpg', food_id:13, place_id:1, detail:'1. Cut whole cheese to small part about 225g-500g (option)
2. Cover with an airtight plastic bag
3. Put them into a refrigerator'},
# food_id: 14 -------------------------
  {id:25, days:3, picture:'Milk1.jpg', food_id:14, place_id:1, detail:'1. Put milk into a refrigerator
(Keep it away from any light'},
# food_id: 15 -------------------------
  {id:26, days:7, picture:'Cream1.jpg', food_id:15, place_id:1, detail:'1. Clean up cream around the open after using it
2. Press the air out and seal the box
3. Put it in a refrigerator'},
# food_id: 16 -------------------------
  {id:27, days:365, picture:'Butter1.jpg', food_id:16, place_id:1, detail:'1. Cover with tin foil or plastic wrap
2. Put it in a refrigerator'},
# food_id: 17 -------------------------
  {id:28, days:2, picture:'lamb1.jpg', food_id:17, place_id:1, detail:'1. Put the lamb into a refrigerator
(Use ground lamb and stew meat within 2 days)
(Use chops and roasts within 5 days'},
  {id:29, days:85, picture:'lamb2.jpg', food_id:17, place_id:2, detail:'1. Wrap it in an airtight freezer wrap
2. Place it in an airtight freezer bag
3. Put it into a freezer'},
# food_id: 18 -------------------------
  {id:30, days:2, picture:'pork1.jpg', food_id:18, place_id:1, detail:'1. Place raw meat in a container
2. Cover loosely with plastic wrap
3. Place it on the lowest shelf in a refrigerator 
(Place cooked meats on a high shelf'},
  {id:31, days:180, picture:'pork2.jpg', food_id:18, place_id:2, detail:"1. Wrap it in an airtight freezer wrap
(Remove the air and seal with a twist tie)
(Do not use thin plastic wrap, greaseproof or brown paper)
2. Put it into a freezer"},
# food_id: 19 -------------------------
  {id:32, days:2, picture:'salmon1.jpg', food_id:19, place_id:1, detail:'1. Unwrap the salmon, and gently pat dry
2. Put some slices of lemon on top of it
3. Wrap it tightly in plastic wrap
4. Store it in a bottom of the refrigerator'},
  {id:33, days:60, picture:'salmon2.jpg', food_id:19, place_id:2, detail:"1. Put it into a freezer"},
# food_id: 20 -------------------------
  {id:34, days:2, picture:'chicken1.jpg', food_id:20, place_id:1, detail:'1. Wrap it in plastic wrap
2. Place it on a lower shelf in a fridge'},
  {id:35, days:100, picture:'chicken2.jpg', food_id:20, place_id:2, detail:"1. Put it into a freezer
(Do not freeze raw meat which is not completely fresh)"},


])


Food.create([

  
])

Period.create([
  
])

