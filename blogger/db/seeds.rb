# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bloguser.create!(name: "Ryan Field")
Blog.create!(title: "the joys of ruby!!", blog_text: "it was a dark and stormy night....", bloguser_id: Bloguser.last.id)