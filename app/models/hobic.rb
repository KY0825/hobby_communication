class Hobic < ApplicationRecord
  has_many :users
  has_many :groups
  has_many :messages
  has_many :rooms
  has_many :chats
end