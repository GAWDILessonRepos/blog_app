# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Article.delete_all
Comment.delete_all
Link.delete_all

categories = Category.create([
    {name: "Logs"},
    {name: "News"},
    {name: "Cat"},
    {name: "Photos"}
  ])

articles = Article.create([
    {title: "Title1",text: "Something goes here", category_id: 1},
    {title: "Awesome Title",text: "Other words were written", category_id: 4},
    {title: "Worst Title",text: "Even more, even more", category_id: 3}
  ])
comments = Comment.create([
    {commenter:"Him", body:"adasdas", article_id: 1},
    {commenter:"Her", body:"erwv", article_id: 2},
    {commenter:"Him", body:"xcvxc", article_id: 3},
    {commenter:"Them", body:"upup", article_id: 1},
    {commenter:"You", body:"qwcwqq", article_id: 2}
  ])
links = Link.create([
    {title:"Google", url:"http://www.google.com", article_id: 1},
    {title:"News", url:"http://www.news.google.com", article_id: 2},
    {title:"Yahoo", url:"http://www.yahoo.com", article_id: 3},
    {title:"BBC", url:"http://www.bbc.com/news/", article_id: 1},
    {title:"Wiki", url:"http://www.wikipedia.org/", article_id: 2}
  ])
