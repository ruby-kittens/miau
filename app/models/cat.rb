class Cat < ApplicationRecord

  validates :name, :age, presence: true
  validates :name, uniqueness: true
  validates :age, inclusion: { in: (1..10) }
  validates :color, inclusion: { in: ["brown", "tiger", "black", "white", "pink"] }, allow_nil: true
  validates :owner, presence: true
  validates :owner, length: { minimum: 3 }
  validates :food, exclusion: { in: ["pineapple", "beer", "chocolate", "wine", "butter"] }

end
