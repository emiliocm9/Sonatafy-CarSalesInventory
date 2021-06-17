class Car < ApplicationRecord
    validates :name, presence: true

    belongs_to :dealer_ship
end