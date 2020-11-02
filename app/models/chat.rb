class Chat < ApplicationRecord

  validates :text,   presence: true

  has_one_attached :image
  belongs_to :hobic
  belongs_to :user
  belongs_to :room

end