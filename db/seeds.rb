# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
t = TestPlan.create([{plan_pieces: {
  1 => Faker::HarryPotter.quote,
  2 => Faker::Friends.quote,
  3 => Faker::StarWars.quote
}}])

ReleaseNote.create(
  problem_log_number: Faker::Number.number(5),
  problem_log_title: Faker::LordOfTheRings.location,
  date_commited: Faker::Date.between(1.year.ago, Date.today),
  process_path: "#{Faker::Hacker.noun} => #{Faker::Hacker.noun} => #{Faker::Hacker.noun}",
  issue: Faker::Food.ingredient,
  resolution: Faker::Lorem.paragraph,
  service_pack: (720020 + Faker::Number.between(1, 20)),
  patch_number: ("0" + Faker::Number.number(1).to_s + "0").to_i,
  test_plan: t.first
)