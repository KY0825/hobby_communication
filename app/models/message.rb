class Message < ApplicationRecord
  with_options presence: true do
    validates :text
  end

  has_one_attached :image
  belongs_to :hobic
  belongs_to :user
  belongs_to :group

end