# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

status_normal = Status.create(status_name: 'norm', discount: 0)
status_worker = Status.create(status_name: 'worker', discount: 0.2)
user1 = User.create(name: 'name1', email: 'email1@mail.ru',
                    number: '1111', password: 'password1', status: status_worker)
user2 = User.create(name: 'name2', email: 'email2@mail.ru',
                    number: '1111', password: 'password2', status: status_normal)
user3 = User.create(name: 'name3', email: 'email3@mail.ru',
                    number: '1111', password: 'password2', status: status_normal)

room1 = Room.create(room_name: 'room1', description: 'great room')
room2 = Room.create(room_name: 'room2', description: 'awesome room')

facility1 = Facility.create(name: 'facility name 1',description: 'some facility')
facility2 = Facility.create(name: 'facility name 2',description: 'another facility')
facility3 = Facility.create(name: 'facility name 3',description: 'third facility')

record1 = Record.create(date: DateTime.now.to_date,
                        time: DateTime.now.to_time,
                        duration: 90, room: room1, user: user1, facilities: [facility1])
record2 = Record.create(date: DateTime.now.to_date,
                        time: DateTime.now.to_time,
                        duration: 60, room: room1, user: user2, facilities: [facility1, facility2])
record3 = Record.create(date: DateTime.now.to_date,
                        time: DateTime.now.to_time,
                        duration: 30, room: room2, user: user1, facilities: [facility1])
record4 = Record.create(date: DateTime.now.to_date,
                        time: DateTime.now.to_time,
                        duration: 90, room: room2, user: user3, facilities: [facility2])
