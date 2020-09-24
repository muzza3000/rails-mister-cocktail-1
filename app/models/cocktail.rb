class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  has_one_attached :photo
  accepts_nested_attributes_for :doses, reject_if: :all_blank, allow_destroy: true
end
