class Doctor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :age, presence: true
end
