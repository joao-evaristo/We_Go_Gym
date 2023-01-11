class Academium < ApplicationRecord
  has_many :reviews
  has_many :user_gym_admins
  has_many :user_enrollments
  scope :search_by_name_address, -> (name) { where("lower(nome) LIKE ? OR lower(endereco) LIKE ?", "%#{name.downcase.strip}%", "%#{name.downcase.strip}%")}
end
