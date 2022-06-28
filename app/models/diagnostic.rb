class Diagnostic < ApplicationRecord
  belongs_to :record, optional: true
end
