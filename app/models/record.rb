class Record < ApplicationRecord
  has_many :record_lists
  has_one :anemnesa
  has_one :physics_support_check
  has_one :diagnostic
  has_one :management_plan
  has_one :remedy_action
  has_many :service_lists
end
