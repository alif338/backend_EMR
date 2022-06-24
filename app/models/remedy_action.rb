class RemedyAction < ApplicationRecord
  belongs_to :record, optional: true
end
