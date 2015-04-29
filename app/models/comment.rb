class Comment < ActiveRecord::Base
  has_many :ratings
  belongs_to :car
end
