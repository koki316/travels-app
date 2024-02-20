class Travel < ApplicationRecord
  validates :title,           presence: true
  validates :description,     presence: true
  validates :place,           presence: true
  
  has_one_attached :image
  belongs_to :user
  
end
