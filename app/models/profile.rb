class Profile < ApplicationRecord
  validates :name, length: { minimum: 3 }
  validates :bio, length: { minimum: 3 }

  has_many :kinks
end
