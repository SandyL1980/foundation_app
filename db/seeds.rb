# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




pictures = []

30.times do |pic|
  first = %w(Carter Luke Jackson Max Chloe Leah Sarah Nora)
  last  = %w(Heaney Struhl Cannell Goode Grayson Rushmore Soper Ruben)
  author = first[(rand(0..7))] + " " + last[(rand(0..7))]

  description = "Lorem ipsum dolor sit amet, consectetur adipisicing."

  lorempixel = %w(technics city business animals fashion nature people)
  cat = lorempixel[(rand(0..7))]
  url = cat.to_s + "/" + rand(1..9).to_s + "/"
  cat_title = url.split
  category_title = cat_title[0].chop.chop.chop
  category = category_title

  rand_title = %w(Cliché Shot Photo Photograph Picture Pic Art)
  
  title =  "*" +  category_title.capitalize.to_s + "  " + rand_title[(rand(0..7))].to_s + "*" 
  custom_url = ""
  new_pic = [title, author, description, url, category,custom_url]
  pictures.push(new_pic)
end

pictures.each do |title, author, description, url, category,custom_url|
  Picture.create( :title => title,
    :author => author,
    :description => description,
    :url => url,
    :custom_url => custom_url,
    :category => category  
    )
end

