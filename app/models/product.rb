class Product < ApplicationRecord
  belongs_to :user
  has_many :product_likers
  has_many :likers, through: :product_likers, :source => :user
  has_many :reviews
  has_many :reviewers, through: :reviews
end
