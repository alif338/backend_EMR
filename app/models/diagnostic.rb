class Diagnostic < ApplicationRecord
  belongs_to :record, optional: true
  has_one :final_diag, dependent: :destroy
end
