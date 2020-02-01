class Location < ApplicationRecord
    has_many :parks, dependent: :destroy
end