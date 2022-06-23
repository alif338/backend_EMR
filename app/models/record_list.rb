class RecordList < ApplicationRecord
  belongs_to :record,
  belongs_to :patient,
end
