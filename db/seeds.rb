# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Status.destroy_all

Status.create!([{
  current_status: true,
  status_message: "Running smoothly",
},
{
  current_status: false,
  status_message: "Litmus is down",
},
{
  current_status: true,
  status_message: "All Litmus services up UP",
},
{
  current_status: true,
  status_message: "Litmus is UP",
},
{
  current_status: false,
  status_message: "Litmus is down",
},
{
  current_status: true,
  status_message: "All Litmus services up UP",
},
{
  current_status: true,
  status_message: "Litmus is UP",
},
{
  current_status: false,
  status_message: "Litmus is down",
},
{
  current_status: true,
  status_message: "All Litmus services up UP",
},
{
  current_status: true,
  status_message: "Litmus is UP",
},
{
  current_status: true,
  status_message: "Litmus is running smoothly",

}])
 
p "Created #{Status.count} statuses"


