# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Team.destroy_all

team1 = Team.create(name: "New England Patriots All-2010s Offense")

Athlete.create(
  first_name: "Tom",
  last_name: "Brady",
  position: "Quarterback",
  jersey_number: 12,
  team: team1
)

Athlete.create(
  first_name: "James",
  last_name: "White",
  position: "Running Back",
  jersey_number: 28,
  team: team1
)

Athlete.create(
  first_name: "James",
  last_name: "Develin",
  position: "Fullback",
  jersey_number: 46,
  team: team1
)

Athlete.create(
  first_name: "Julian",
  last_name: "Edelman",
  position: "Wide Receiver",
  jersey_number: 11,
  team: team1
)

Athlete.create(
  first_name: "Wes",
  last_name: "Welker",
  position: "Wide Receiver",
  jersey_number: 83,
  team: team1
)

Athlete.create(
  first_name: "Danny",
  last_name: "Amendola",
  position: "Wide Receiver",
  jersey_number: 80,
  team: team1
)

Athlete.create(
  first_name: "Rob",
  last_name: "Gronkowski",
  position: "Tight End",
  jersey_number: 87,
  team: team1
)

Athlete.create(
  first_name: "Nate",
  last_name: "Solder",
  position: "Offensive Tackle",
  jersey_number: 77,
  team: team1
)

Athlete.create(
  first_name: "Sebastian",
  last_name: "Vollmer",
  position: "Offensive Tackle",
  jersey_number: 76,
  team: team1
)

Athlete.create(
  first_name: "Joe",
  last_name: "Thuney",
  position: "Guard",
  jersey_number: 62,
  team: team1
)

Athlete.create(
  first_name: "Logan",
  last_name: "Mankins",
  position: "Guard",
  jersey_number: 70,
  team: team1
)

Athlete.create(
  first_name: "David",
  last_name: "Andrews",
  position: "Center",
  jersey_number: 60,
  team: team1
)

team2 = Team.create(name: "2019 Rugby World Cup-Winning Springboks First XV")

Athlete.create(
  first_name: "Tendai",
  last_name: "Mtwarira",
  position: "Loosehead Prop",
  jersey_number: 1,
  team: team2
)

Athlete.create(
  first_name: "Bongi",
  last_name: "Mbonambi",
  position: "Hooker",
  jersey_number: 2,
  team: team2
)

Athlete.create(
  first_name: "Frans",
  last_name: "Malherbe",
  position: "Tighthead Prop",
  jersey_number: 3,
  team: team2
)

Athlete.create(
  first_name: "Eben",
  last_name: "Etsebeth",
  position: "Left Lock",
  jersey_number: 4,
  team: team2
)

Athlete.create(
  first_name: "Lood",
  last_name: "De Jager",
  position: "Right Lock",
  jersey_number: 5,
  team: team2
)

Athlete.create(
  first_name: "Siya",
  last_name: "Kolisi",
  position: "Openside Flanker",
  jersey_number: 6,
  team: team2
)

Athlete.create(
  first_name: "Pieter-Steph",
  last_name: "Du Toit",
  position: "Blindside Flanker",
  jersey_number: 7,
  team: team2
)

Athlete.create(
  first_name: "Duane",
  last_name: "Vermeulen",
  position: "Number Eight",
  jersey_number: 8,
  team: team2
)

Athlete.create(
  first_name: "Faf",
  last_name: "De Klerk",
  position: "Scrumhalf",
  jersey_number: 9,
  team: team2
)

Athlete.create(
  first_name: "Handré",
  last_name: "Pollard",
  position: "Flyhalf",
  jersey_number: 10,
  team: team2
)

Athlete.create(
  first_name: "Makazole",
  last_name: "Mapimpi",
  position: "Left Wing",
  jersey_number: 11,
  team: team2
)

Athlete.create(
  first_name: "Damian",
  last_name: "De Allende",
  position: "Inside Centre",
  jersey_number: 12,
  team: team2
)

Athlete.create(
  first_name: "Lukhanyo",
  last_name: "Am",
  position: "Outside Centre",
  jersey_number: 13,
  team: team2
)

Athlete.create(
  first_name: "Cheslin",
  last_name: "Kolbe",
  position: "Right Wing",
  jersey_number: 14,
  team: team2
)

Athlete.create(
  first_name: "Willie",
  last_name: "Le Roux",
  position: "Fullback",
  jersey_number: 8,
  team: team2
)
