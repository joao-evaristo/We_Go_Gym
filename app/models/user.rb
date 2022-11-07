class User < ApplicationRecord
    belongs_to :gym, optional: true
    has_secure_password

    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: 'precisa ser um endereço de email válido'}
    validates :name, presence: true, format: { with: /\A[^0-9`!@#\$%\^&*+_=]+\z/, on: :create, message: 'não pode conter carecteres especiais'}
    validates :username, presence: true, format: { with: /\A[a-zA-Z0-9]+\z/, on: :create, message: 'não pode conter carecteres especiais'}
    validates :username, uniqueness: {message: 'Nome de usuário já está em uso'}
    validates :username, uniqueness: {message: 'Nome de usuário já está em uso'}
    validates :email, uniqueness: {message: 'Já existe uma conta com esse e-mail'}
    validates :phone_number, uniqueness: {message: 'Telefone já cadastrado'}
end
