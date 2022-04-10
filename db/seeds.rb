# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

walmart = Company.create(name: "Walmart")
shopify = Company.create(name: "Shopify")

walmart_analyst = Job.create(name: "Analyst", company_id: walmart.id)
shopify_senior_dev = Job.create(name: "Senior Dev", company_id: shopify.id)