# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require '../test/factory_bot.rb'
user = User.new
user.email = 'admin@example.com'
user.password = 'adminadmin'
user.save!


template1 = FactoryBot::create(:template)
template2 = FactoryBot::create(:template)

7.times do
    FactoryBot::create(:document, template_id: template1.id)
end
7.times do
    FactoryBot::create(:document, template_id: template2.id)
end
