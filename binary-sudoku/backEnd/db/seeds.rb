# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Board.destroy_all

board1 = Board.create(layout: { "0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": -1,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 1,
                                "1, 3": 1,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 1,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 1,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": -1,
                                "4, 5": 0,
                                "5, 0": -1,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})
                                
board2 = Board.create(layout: { "0, 0": 0,
                                "0, 1": -1,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 1,
                                "0, 5": 1,
                                "1, 0": -1,
                                "1, 1": -1,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 1,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": -1,
                                "3, 3": 0,
                                "3, 4": 1,
                                "3, 5": 1,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0)}

board3 = Board.create(layout: { "0, 0": 0,
                                "0, 1": 0,
                                "0, 2": -1,
                                "0, 3": 0,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 1,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": -1,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": -1,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": -1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": -1,
                                "5, 4": -1,
                                "5, 5": 0})

board4 = Board.create(layout: { "0, 0": 0,
                                "0, 1": -1,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 1,
                                "1, 0": 1,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": -1,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": -1,
                                "2, 4": 0,
                                "2, 5": 1,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 1,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": -1,
                                "4, 3": 0,
                                "4, 4": -1,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": -1,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board5 = Board.create(layout: { "0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": -1,
                                "1, 1": 0,
                                "1, 2": -1,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 1,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": -1,
                                "2, 5": 0,
                                "3, 0": -1,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": -1,
                                "3, 5": 0,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 1,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board6 = Board.create(layout: { "0, 0": 1,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 1,
                                "1, 1": 1,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": -1,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": -1,
                                "3, 0": -1,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": -1,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 1,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": -1,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board7 = Board.create(layout: { "0, 0": -1,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": -1,
                                "1, 0": 0,
                                "1, 1": 1,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": -1,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": -1,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 1,
                                "4, 2": 0,
                                "4, 3": -1,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": -1,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board8 = Board.create(layout: { "0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 1,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 1,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 1,
                                "4, 0": -1,
                                "4, 1": -1,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": -1,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 1,
                                "5, 4": 0,
                                "5, 5": 0})

board9 = Board.create(layout: { "0, 0": -1,
                                "0, 1": -1,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 1,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": -1,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": -1,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": -1,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": -1,
                                "5, 5": 0})

board10 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 1,
                                "2, 1": 0,
                                "2, 2": -1,
                                "2, 3": -1,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": -1,
                                "3, 4": -1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": -1,
                                "4, 3": 0,
                                "4, 4": -1,
                                "4, 5": 0,
                                "5, 0": -1,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board11 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 1,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 1,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": -1,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": -1,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": -1,
                                "3, 3": 0,
                                "3, 4": -1,
                                "3, 5": -1,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": -1,
                                "5, 3": -1,
                                "5, 4": 0,
                                "5, 5": 0})

board12 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": -1,
                                "2, 0": 1,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 1,
                                "3, 5": 0,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": 1,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": -1,
                                "5, 0": -1,
                                "5, 1": 0,
                                "5, 2": 1,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board13 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 1,
                                "0, 3": 1,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 1,
                                "1, 3": 0,
                                "1, 4": 1,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 1,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": -1,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})

board14 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": -1,
                                "0, 4": -1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 1,
                                "3, 2": 0,
                                "3, 3": -1,
                                "3, 4": -1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 1,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 1,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 1})

board15 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": -1,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 1,
                                "1, 2": 0,
                                "1, 3": -1,
                                "1, 4": 0,
                                "1, 5": 1,
                                "2, 0": 0,
                                "2, 1": 1,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": -1,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": -1,
                                "5, 5": -1})

board16 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 1,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 1,
                                "2, 0": -1,
                                "2, 1": -1,
                                "2, 2": 0,
                                "2, 3": 1,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 1,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 1,
                                "5, 2": 0,
                                "5, 3": 1,
                                "5, 4": 0,
                                "5, 5" -1})
board17 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 1,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": -1,
                                "1, 3": -1,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": -1,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": -1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 1,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 1,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": -1,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})
board18 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": -1,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 1,
                                "1, 2": 1,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": 0,
                                "2, 2": 1,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 1,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 1,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})
board19 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 1,
                                "1, 1": 0,
                                "1, 2": -1,
                                "1, 3": 0,
                                "1, 4": 0,
                                "1, 5": 1,
                                "2, 0": 1,
                                "2, 1": 0,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 1,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": -1,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": -1,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 1,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": -1,
                                "5, 5": 0})
board20 = Board.create(layout: {"0, 0": 0,
                                "0, 1": -1,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": -1,
                                "1, 0": 1,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": -1,
                                "1, 4": 0,
                                "1, 5": 0,
                                "2, 0": 0,
                                "2, 1": -1,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": 0,
                                "2, 5": 0,
                                "3, 0": -1,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 0,
                                "3, 4": 1,
                                "3, 5": 0,
                                "4, 0": 0,
                                "4, 1": 0,
                                "4, 2": 1,
                                "4, 3": 0,
                                "4, 4": 1,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 0})
board21 = Board.create(layout: {"0, 0": 0,
                                "0, 1": 0,
                                "0, 2": 0,
                                "0, 3": 0,
                                "0, 4": 0,
                                "0, 5": 0,
                                "1, 0": 0,
                                "1, 1": 0,
                                "1, 2": 0,
                                "1, 3": 0,
                                "1, 4": -1,
                                "1, 5": 0,
                                "2, 0": -1,
                                "2, 1": -1,
                                "2, 2": 0,
                                "2, 3": 0,
                                "2, 4": -1,
                                "2, 5": 0,
                                "3, 0": 0,
                                "3, 1": 0,
                                "3, 2": 0,
                                "3, 3": 1,
                                "3, 4": 0,
                                "3, 5": 0,
                                "4, 0": -1,
                                "4, 1": 0,
                                "4, 2": 0,
                                "4, 3": 0,
                                "4, 4": 0,
                                "4, 5": 0,
                                "5, 0": 0,
                                "5, 1": 0,
                                "5, 2": 0,
                                "5, 3": 0,
                                "5, 4": 0,
                                "5, 5": 1})