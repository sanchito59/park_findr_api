class Seed

    def self.begin
      seed = Seed.new
      seed.generate_locations
    end
  
    def generate_locations
      rand(35..65).times do
        locations = []
        locations.push(Location.create!(
          continent: "North America",
          country: Faker::Address.country,
          latitude: Faker::Address.latitude,
          longitude: Faker::Address.longitude,
          city: Faker::Address.city,
          community: Faker::Address.community,
          street_address: Faker::Address.street_address
          ))
          locations
        end
    end
    puts "Created #{Location.count} locations"
end
  
Seed.begin