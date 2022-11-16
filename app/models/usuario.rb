class Usuario < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'precisa ser um endereço de email válido'}
  validates :nome, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, on: :create, message: 'não pode conter carecteres especiais'}
  validates :email, uniqueness: {message: 'Já existe uma conta com esse e-mail'}
  validates :telefone, uniqueness: {message: 'Telefone já cadastrado'}
end
