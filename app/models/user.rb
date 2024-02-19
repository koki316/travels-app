class User < ApplicationRecord
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,        presence: true, format: { with: /\A[ぁ-んァ-ヶ一\p{Han}]+\z/ }
  validates :age,             presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 10, less_than_or_equal_to: 120 }
 
       
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX, message: "は半角英数を両方含む必要があります"}
         
  has_many :travels
end
