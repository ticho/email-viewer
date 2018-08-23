Email.destroy_all

15.times do 
  Email.create(
    object: Faker::HarryPotter.location,
    body: Faker::HarryPotter.quote
  )
end