class Power < ApplicationRecord
    validates :description, {
        length: {minimum: 20},
        presence: true
      }
end
