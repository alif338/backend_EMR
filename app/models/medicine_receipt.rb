class MedicineReceipt < ApplicationRecord
  belongs_to :patient
  validates :patient_id, presence: true
  validates :date_time, presence: true
  validates :medicine_receipt, presence: true
  validates :written_by, presence: true
end
