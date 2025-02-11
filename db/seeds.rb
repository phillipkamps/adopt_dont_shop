# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
PetApplication.destroy_all
Pet.destroy_all
Shelter.destroy_all
Application.destroy_all

aurora_shelter = Shelter.create(name: "Aurora shelter", city: "Aurora, CO", foster_program: false, rank: 9)
rgv_shelter = Shelter.create(name: "RGV animal shelter", city: "Harlingen, TX", foster_program: false, rank: 5)
fancy_shelter = Shelter.create(name: "Fancy pets of Colorado", city: "Denver, CO", foster_program: true, rank: 10)
mystery_shelter = Shelter.create(name: "Mystery Building", city: "Irvine CA", foster_program: false, rank: 9)

scooby = mystery_shelter.pets.create(name: "Scooby", age: 2, breed: "Great Dane", adoptable: true)
ralph = mystery_shelter.pets.create(name: "Ralph", age: 12, breed: "Pyerneese", adoptable: true)
frank = rgv_shelter.pets.create(name: "Frank", age: 3, breed: "Husky", adoptable: true)
bilbo = aurora_shelter.pets.create(name: "Bilbo", age: 7, breed: "Golden Ret", adoptable: true)
generic = fancy_shelter.pets.create(name: "Generic", age: 4, breed: "Pit", adoptable: true)

bobby = Application.create(name: "Bobby Smith", address: "3245 E 1st", city: "Lakewood", state: "CO", zipcode: "80026", app_status: "In Progress")
joe = Application.create(name: "Joe", address: "4455 1st", city: "Denver", state: "CO", zipcode: "85555", app_status: "In Progress")
susan = Application.create(name: "Susan", address: "4678 N st", city: "Lakewood", state: "CO", zipcode: "82345", app_status: "In Progress")

app1 = PetApplication.create(pet: scooby, application: bobby)
app2 = PetApplication.create(pet: ralph, application: bobby)
app3 = PetApplication.create(pet: scooby, application: joe)
app4 = PetApplication.create(pet: bilbo, application: joe)
app5 = PetApplication.create(pet: bilbo, application: susan)
app6 = PetApplication.create(pet: frank, application: susan)
app7 = PetApplication.create(pet: generic, application: bobby)
app8 = PetApplication.create(pet: generic, application: susan)
