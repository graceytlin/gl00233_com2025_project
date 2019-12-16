# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

exampletimesheet = Timesheet.where(date_from: '2019-01-01').first
exampletimesheet.delete if exampletimesheet


timesheets = Timesheet.create([date_from: '2019-01-01', date_to: '2019-02-01'])

exampleshift = Shift.where(start_time: '00:00:00').first
exampleshift.delete if exampleshift


shifts = Shift.create([start_time: '00:00:00', end_time: '24:00:00', date: '1901-01-01'])