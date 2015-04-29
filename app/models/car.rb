class Car < ActiveRecord::Base
	validates :price, numericality: { greater_than: 0 }
	validates :stock, numericality: true
		
	has_many :ratings

	def total_value
		price * stock
	end
	def self.most_expensive
		order(price: :desc).first
	end
	
	def average_rating
  		ratings.sum(:score) / ratings.size unless ratings.empty?
	end
end
