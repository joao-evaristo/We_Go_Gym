class Review < ApplicationRecord
  belongs_to :academium, optional: true
  belongs_to :usuario, optional: true
  validates :academium_id, uniqueness: {scope: :usuario_id, message: "Você já avaliou essa academia!"}
  validates :rating, numericality: {less_than_or_equal_to: 5, greater_than: 0, only_integer: true, message: "A avaliação deve ser de 0 a 5!"}
end
