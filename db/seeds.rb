puts 'Clearing old data...'
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
cohorts = []
puts 'Seeding cohorts...'
5.times do
    cohorts <<
        Cohort.create(
            name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime('%m%d%Y')}",
            current_mod: rand(1..5),
        )
end
# cohorts <<
#     Cohort.create(name: "nyc-dumbo-web-#{Faker::Date.forward(years: 1).strftime('%m%d%Y')}", current_mod: rand(1..5))
# cohorts <<
#     Cohort.create(name: "nyc-dumbo-web-#{Faker::Date.forward(years: 1).strftime('%m%d%Y')}", current_mod: rand(1..5))
# cohorts <<
#     Cohort.create(name: "nyc-dumbo-web-#{Faker::Date.forward(years: 1).strftime('%m%d%Y')}", current_mod: rand(1..5))
# cohorts <<
#     Cohort.create(name: "nyc-dumbo-web-#{Faker::Date.forward(years: 1).strftime('%m%d%Y')}", current_mod: rand(1..5))
# cohorts <<
#     Cohort.create(name: "nyc-dumbo-web-#{Faker::Date.forward(years: 1).strftime('%m%d%Y')}", current_mod: rand(1..5))

puts 'Seeding students...'
50.times { Student.create(name: Faker::Name.name, age: rand(5..75), cohort: cohorts.sample) }

puts 'Done!'
