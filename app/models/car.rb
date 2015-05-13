# @Class Car
class Car < ActiveRecord::Base
  validates :price, numericality: { greater_than: 0 }
  validates :stock, numericality: true
  has_many :ratings
  mount_uploader :photo, ImageUploader

  def total_value
    price * stock
  end

  def self.most_expensive
    order(price: :desc).first
  end

  def average_rating
    ratings.sum(:score) / ratings.size unless ratings.empty?
  end

  before_save :photo_recreate
  def photo_recreate
    photo.recreate_versions!
  end
end
