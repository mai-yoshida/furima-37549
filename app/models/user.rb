class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX }
  validates :nickname,       presence: true
  validates :last_name,      presence: true
  validates :first_name,     presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birthday,        presence: true

  with_options presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]+\z/, message: 'Input full-width charcters' } do
    validates :last_name
    validates :first_name
    validates :last_name_kana
    validates :first_name_kana
  end
end
