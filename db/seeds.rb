# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Drug.find_or_create_by(title: "Ципролет")
Drug.find_or_create_by(title: "Кларитин")
Drug.find_or_create_by(title: "Ацикловир")

Drugstore.find_or_create_by(title: "Центральная аптека", address: "Ауэзова 13", city: "almaty", coords: "43.22340773302177,76.89706596801746")
Drugstore.find_or_create_by(title: "Аптека №2", address: "улица Жарокова, 37", city: "almaty", coords: "43.24736455550513,76.89791891048426")

DrugInDrugstore.find_or_create_by(drug: Drug.first, drugstore: Drugstore.first, status: "AVAILABLE", price: 1500)
