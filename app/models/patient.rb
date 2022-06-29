class Patient < ApplicationRecord
  has_many :records
  has_many :medicine_receipt
  validates :name, presence: true, uniqueness: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :religion, presence: true
  validates :education, presence: true
  validates :job_profession, presence: true
  validates :alergical_hist, presence: true
  validates :member_type, presence: true
  validates :no_medical_record, presence: true, uniqueness: true
end
