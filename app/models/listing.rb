class Listing < ApplicationRecord
  belongs_to :user

  #必須項目
  validates :company, presence: true

end
