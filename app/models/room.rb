class Room < ApplicationRecord
  validates :name,    presence: true

  has_one_attached :image
  belongs_to :hobic
  belongs_to :user
  has_many :chats

end