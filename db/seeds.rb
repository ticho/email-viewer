Email.destroy_all

30.times do 
  Email.create(
    object: Faker::HarryPotter.location,
    body: Faker::HarryPotter.quote
  )
end