class Review < ApplicationRecord
  belongs_to :academium, optional: true
  belongs_to :usuario, optional: true
end
