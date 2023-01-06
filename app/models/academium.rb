class Academium < ApplicationRecord
  scope :filter_by_name, -> (name) { where("lower(nome) like ?", "#{name.downcase}%")}
  scope :filter_by_address, -> (address) { where("lower(endereco) like ?", "#{address.downcase}%")}
end
