supplier = Supplier.new(name: "Wizards of the Coast", email: "info@wizards.com", phone_number: "(425) 226-6500")
#supplier.save

supplier = Supplier.new(name: "Chaosium", email: "customerservice@chaosium.com", phone_number: "(361)-450-0787")
#supplier.save

supplier = Supplier.new(name: "Pinnacle Entertainment Group", email: "info@penginc.com", phone_number: "(456)-101-1123")
#supplier.save

product = Product.new(name: "Bicycle Platinum Playing Cards", price: 12, description: "From a lineage of design eloquence comes a new deck of playing cards rendered in platinum. The elements of the design are forged from liquid metal tones, and enhanced by metallic inks. Crafted with rare aesthetics, the Bicycle Platinum is a work of sophistication engineered to last and impress.")
product.save

product = Product.new(name: ""Wildspire Fantasy Miniatures"", price: 45, description: "A collection of 68 paintable miniatures for D&D that live up to the creativity of your games. Versatile figurines for D&D, used as monsters, player characters or NPCs. Great gifts for any D&D enthusiast!")
product.save

product = Product.new(name: "QMay DND Dice Set", price: 23, description: "Super deal: 20  D&D dice sets, indluce 5 double-color sets (140 pieces in total), and 1 big black drawstring bag!")
product.save

product = Product.new(name: "Dungeons & Dragons Core Rulebooks Gift Set", price: 93, description: "Need a gift for the holidays? A birthday present, a treat for yourself? This is it. Inside the D&D Core Rulebook Gift Set are special foil cover editions of the three Dungeons & Dragons core rulebooks—the Players Handbook, Dungeon Master's Guide, and Monster Manual—plus a Dungeon Master's screen, all collected in a stylish slipcase. It's the perfect gift for any D&D fan!")
product.save

image = Image.new(url: "https://playingcarddecks.com/cdn/shop/products/1322d168e52aa6e68245118705e4710a_original_e4caca7b-466f-47f4-b687-1ef895d8bb11.jpg?v=1576804703")
image.save

image = Image.new(url: "https://m.media-amazon.com/images/I/91gNZwc-1-L.__AC_SX300_SY300_QL70_FMwebp_.jpg")
image.save

image = Image.new(url: "https://m.media-amazon.com/images/I/81AgXWno1YL.__AC_SX300_SY300_QL70_FMwebp_.jpg")
image.save

image = Image.new(url: "https://m.media-amazon.com/images/I/71BURLYgGhL._SY522_.jpg")
image.save
