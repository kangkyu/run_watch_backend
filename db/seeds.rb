# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Episode.create([
    {
      title: "영등포 타임스퀘어",
      description: "이효리 황정음",
      number: 1
    },
    {
      title: "수원 월드컵 경기장",
      description: "이천희 구하라 송지효",
      number: 2
    }
  ])

User.create
