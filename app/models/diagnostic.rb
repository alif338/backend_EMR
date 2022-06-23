class Diagnostic < ApplicationRecord
  belongs_to :record
  has_one :final_diag, dependent: :destroy
end
