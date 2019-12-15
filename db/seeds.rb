# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exampleshift = Shift.where(start: '00:00:00').first
exampleshift.delete if exampleshift


shifts = Shift.create([start: '00:00:00', end: '24:00:00', date: '1901-01-01'])