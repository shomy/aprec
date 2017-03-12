class Listing < ApplicationRecord
  belongs_to :user

  #必須項目
  validates :company, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  
end
