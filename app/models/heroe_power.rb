class HeroePower < ApplicationRecord
  enum :strength, [:Weak, :Average, :Strong]
  belongs_to :power
  belongs_to :heroe

  validates :strength, inclusion: { in: ["Weak", "Average", "Strong"]
}
end
