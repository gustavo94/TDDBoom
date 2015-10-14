# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Map.destroy_all
mapa_easy_1 = Map.new
mapa_easy_1.name = "Easy 1"
mapa_easy_1.level = Map::LEVEL[:easy]
board = []
board << {x:0,y:0,value:5}
board << {x:1,y:0,value:3}
board << {x:2,y:0,value:4}
board << {x:3,y:0,value:1}
board << {x:4,y:0,value:3}
board << {x:5,y:0,value:'start'}
board << {x:0,y:1,value:3}
board << {x:1,y:1,value:1}
board << {x:2,y:1,value:5}
board << {x:3,y:1,value:3}
board << {x:4,y:1,value:4}
board << {x:5,y:1,value:2}
board << {x:0,y:2,value:5}
board << {x:1,y:2,value:1}
board << {x:2,y:2,value:2}
board << {x:3,y:2,value:2}
board << {x:4,y:2,value:4}
board << {x:5,y:2,value:1}
board << {x:0,y:3,value:5}
board << {x:1,y:3,value:3}
board << {x:2,y:3,value:5}
board << {x:3,y:3,value:1}
board << {x:4,y:3,value:5}
board << {x:5,y:3,value:4}
board << {x:0,y:4,value:5}
board << {x:1,y:4,value:3}
board << {x:2,y:4,value:1}
board << {x:3,y:4,value:2}
board << {x:4,y:4,value:1}
board << {x:5,y:4,value:1}
board << {x:0,y:5,value:'target'}
board << {x:1,y:5,value:3}
board << {x:2,y:5,value:2}
board << {x:3,y:5,value:2}
board << {x:4,y:5,value:3}
board << {x:5,y:5,value:4}
mapa_easy_1.board = board
optimizations = []
optimizations << {x:3,y:3,value:200}
optimizations << {x:1,y:5,value:100}
mapa_easy_1.optimizations = optimizations
mapa_easy_1.save



mapa_easy_2 = Map.new
mapa_easy_2.name = "Easy 2"
mapa_easy_2.level = Map::LEVEL[:easy]
board = []
board << {x:0,y:0,value:4}
board << {x:1,y:0,value:1}
board << {x:2,y:0,value:5}
board << {x:3,y:0,value:1}
board << {x:4,y:0,value:1}
board << {x:5,y:0,value:'start'}
board << {x:0,y:1,value:1}
board << {x:1,y:1,value:2}
board << {x:2,y:1,value:1}
board << {x:3,y:1,value:1}
board << {x:4,y:1,value:5}
board << {x:5,y:1,value:2}
board << {x:0,y:2,value:1}
board << {x:1,y:2,value:5}
board << {x:2,y:2,value:2}
board << {x:3,y:2,value:5}
board << {x:4,y:2,value:2}
board << {x:5,y:2,value:4}
board << {x:0,y:3,value:4}
board << {x:1,y:3,value:2}
board << {x:2,y:3,value:3}
board << {x:3,y:3,value:1}
board << {x:4,y:3,value:4}
board << {x:5,y:3,value:5}
board << {x:0,y:4,value:3}
board << {x:1,y:4,value:3}
board << {x:2,y:4,value:3}
board << {x:3,y:4,value:2}
board << {x:4,y:4,value:5}
board << {x:5,y:4,value:4}
board << {x:0,y:5,value:'target'}
board << {x:1,y:5,value:3}
board << {x:2,y:5,value:4}
board << {x:3,y:5,value:4}
board << {x:4,y:5,value:3}
board << {x:5,y:5,value:5}
mapa_easy_2.board = board
optimizations = []
optimizations << {x:0,y:0,value:200}
optimizations << {x:0,y:3,value:100}
mapa_easy_2.optimizations = optimizations
mapa_easy_2.save

