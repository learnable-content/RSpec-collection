class CartItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :album

  validates :user, presence: true
  validates :album, presence: true
  validates :album, uniqueness: {scope: :user}
end
