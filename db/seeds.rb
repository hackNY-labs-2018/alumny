# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

Alum.delete_all

puts 'Deleted all alums.'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'data.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  a = Alum.new
  a.firstname = row['firstname']
  a.lastname = row['lastname']
  a.bio = row['bio']
  a.headshot_url = row['headshot']
  a.hometown = row['hometown']
  a.save
  puts "Created: #{a.firstname} #{a.lastname}"
end
