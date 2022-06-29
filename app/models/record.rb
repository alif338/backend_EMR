class Record < ApplicationRecord
  belongs_to :patient
  has_one :anemnesa
  has_one :physics_support_check
  has_one :diagnostic
  has_one :management_plan
  has_one :remedy_action
  has_many :service_lists

  validates :date_time, presence: true
  validates :signature_name, presence: true
end
