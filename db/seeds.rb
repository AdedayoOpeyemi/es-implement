# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def seed_patients
  10_000.times do
    new_patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    puts new_patient.first_name + " " + new_patient.last_name
  end
end

def timespent
  time = Benchmark.measure do
    yield
  end
  puts "time spent #{time.real.round(2)} seconds."
end

timespent {seed_patients}
