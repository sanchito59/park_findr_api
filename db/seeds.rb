class Seed

    def self.begin
      seed = Seed.new
      seed.generate_locations
    end
  
    def generate_locations
      rand(35..65).times do
        locations = []
        locations.push(Location.create!(
          continent: ["Asia", "Africa", "North America", "South America", "Europe", "Australia"].sample,
          country: Faker::Address.country,
          latitude: Faker::Address.latitude,
          longitude: Faker::Address.longitude,
          city: Faker::Address.city,
          community: Faker::Address.community,
          street_address: Faker::Address.street_address
          ))
          locations
          rand(3..15).times do
            locations.each do |location|
              Park.create!(
                :name => Faker::Games::Zelda.location,
                :size => rand(1..65000),
                :climate => ["warm", "cold", "dry", "hot", "tropical", "sunny"].sample(),
                :operating_hours => (rand(6..10).to_s) + ":00 A.M. to " + (rand(4..8).to_s) + ":00 P.M.",
                :dog_friendly => Faker::Boolean.boolean,
                :activities => ["hiking", "swimming", "running", "stargazing", "backpacking", "fishing", "spelunking", "soccer, football, basketball", "chess"].sample,
                :national_park => Faker::Boolean.boolean,
                :fees => [0, 0, 0, 0, 5, 3, 10, 20, 35].sample,
                :lodging => Faker::Boolean.boolean,
                :camping => Faker::Boolean.boolean,
                :location_id => location.id
            )
            end
          end
        end
        puts "Created #{Location.count} locations with #{Park.count} parks."
    end
end
  
Seed.begin