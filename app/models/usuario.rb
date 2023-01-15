class Usuario < ApplicationRecord
  has_secure_password
  has_many :user_gym_admins
  has_many :reviews
  has_many :user_enrollments

  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'Precisa ser um endereço de email válido'}
  validates :nome, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, on: :create, message: 'Não pode conter carecteres especiais'}
  validates :email, uniqueness: {message: 'Já existe uma conta com esse e-mail'}
  validates :telefone, uniqueness: {message: 'Telefone já cadastrado'}
  validates :password, length: { minimum: 8}, on: :create
  validates :role, presence: true

end
