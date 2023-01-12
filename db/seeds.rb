puts 'Creating roles...'

good = Role.create(character_name: 'Good')
ugly = Role.create(character_name: 'Ugly')
bad = Role.create(character_name: 'Bad')

puts 'Creating auditions...'

eastwood = Audition.create(actor: 'Clint Eastwood', location: 'Santa Cruz, CA', phone: 4153467890, hired: false, role_id: good.id)
wallach = Audition.create(actor: 'Eli Wallach', location: 'Santa Barbara, CA', phone: 7035941320, hired: false, role_id: ugly.id)
cleef = Audition.create(actor: 'Lee Van Cleef', location: 'San Francisco, CA', phone: 4155209620, hired: false, role_id: bad.id)

bronson = Audition.create(actor: 'Charles Bronson', location: 'Chicago, IL', phone: 3125568890, hired: false, role_id: good.id)
woody = Audition.create(actor: 'Woody Strode', location: 'New York, NY', phone: 2121026688, hired: false, role_id: ugly.id)
henry = Audition.create(actor: 'Henry Fonda', location: 'Santa Monica, CA', phone: 3106487645, hired: false, role_id: bad.id)

puts 'Seeding done!'