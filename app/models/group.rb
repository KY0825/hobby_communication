class Group < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options presence: true do
    validates :name
    validates :category_id
    validates :genre_id
    validates :user
  end

  has_one_attached :image
  belongs_to :hobic
  belongs_to :user
  has_many :messages

  belongs_to_active_hash :category
  belongs_to_active_hash :genre

  with_options numericality:{other_than: 1} do
    validates :category_id
    validates :genre_id
  end

end