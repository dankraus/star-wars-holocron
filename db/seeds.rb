# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Feed.create(name: 'Rebel Scum', url: 'http://www.rebelscum.com/rss/rebelscum.rss')
Feed.create(name: 'YakFace', url: 'http://yakfaceforums.com/main/feed/')
Feed.create(name: 'StarWars.com', url: 'http://starwars.com/data/headlines.xml')
Feed.create(name: 'TheForce.net', url: 'http://www.theforce.net/rss/theforcenet.rss')
