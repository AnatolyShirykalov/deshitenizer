# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin_pw = Rails.env.production? ? ENV["ADMIN_PASSWORD"] : "admin11"
admin_email = 'admin@deshitenizer.ru'
User.create!(email: admin_email, password: admin_pw, password_confirmation: admin_pw) if ! User.find_by email: admin_email


Content.find_or_create_by({
  key: "default_input_text",
  value:
'''Вставьте сюда текст и нажмите кнопку «Оттипографить!».

“Пример” текста -  убедитесь , что   это предложение,написанное  в "ООО "Ромашка", будет исправлено !'''
})
