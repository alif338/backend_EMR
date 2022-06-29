class Service < ApplicationRecord
  has_many :service_lists
  validates :service_name, presence: true, uniqueness: true
end
