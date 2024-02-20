class Travel < ApplicationRecord
  validates :title,           presence: true
  validates :description,     presence: true
  validates :place,           presence: true

  belongs_to :user
  
end
