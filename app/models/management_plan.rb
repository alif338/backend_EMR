class ManagementPlan < ApplicationRecord
  belongs_to :record, optional: true
end
