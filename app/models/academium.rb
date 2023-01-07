class Academium < ApplicationRecord
  scope :search_by_name_address, -> (name) { where("lower(nome) LIKE ? OR lower(endereco) LIKE ?", "%#{name.downcase.strip}%", "%#{name.downcase.strip}%")}
end
