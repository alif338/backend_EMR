class ManagementPlan < ApplicationRecord
  belongs_to :record
  validates :record_id, presence: true, uniqueness: true
end
