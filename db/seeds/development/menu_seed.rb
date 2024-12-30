Menu.create!(
  menu_category: MenuCategory.first,
  restaurant: Restaurant.first,
  title: 'テストメニュー',
  description: "この商品はサンプルです",
  image: File.open("#{Rails.root}/db/seeds/development/seed_files/menu_sample.png"),
  price: 100
)

puts 'Menu done'
