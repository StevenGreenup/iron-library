# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Author.create first_name: "Stephen", last_name: "King", Bio: "Stephen Edwin King (born September 21, 1947) is an American author of contemporary horror, supernatural fiction, suspense, science fiction, and fantasy."
Book.create title: "The Shining", photo_url:"https://upload.wikimedia.org/wikipedia/en/4/4c/Shiningnovel.jpg", price_in_cents: 899, author_id: 1
