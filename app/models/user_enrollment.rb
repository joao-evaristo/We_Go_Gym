class UserEnrollment < ApplicationRecord
  belongs_to :usuario
  belongs_to :academium
end
