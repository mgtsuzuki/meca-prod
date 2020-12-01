1_000.times do |i|
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create!(
        first_name: first_name,
        last_name:  last_name,
        email: first_name + "." + last_name + i.to_s + "@usp.br",
        password: "1234567890ab")
        print '.' if i % 100 == 0
  end
  puts