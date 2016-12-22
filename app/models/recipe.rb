class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_categories
  has_many :categories, through: :recipe_categories
  validates :title, presence: true, length: {maximum: 50} 
  validates :description, presence: true, length: {maximum: 200}
  validates :user_id, presence: true
end
