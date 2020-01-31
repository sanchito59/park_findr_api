FactoryBot.define do
    factory(:location) do
      continent {'North America'}
      country {'United States of America'}
      city {'Whitefish, Montana'}
      community {'Glacier National Park'}
      street_address {'Glacier Rte 1 Rd/Going-to-the-Sun Rd'}
      latitude { 48.7596 }
      longitude { 113.7870 }
    end
  end