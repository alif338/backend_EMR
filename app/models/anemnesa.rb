class Anemnesa < ApplicationRecord
  belongs_to :record, optional: true
  # validates :record_id, presence: true, uniqueness: true
end
