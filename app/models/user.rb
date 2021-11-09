class User < ApplicationRecord
    has_many :reviews_on_user, class_name: "Review", foreign_key: "reviewee_id"
    has_many :user_reviews, class_name: "Review", foreign_key: "reviewer_id"
    has_many :reviewed_products, through: :user_reviews

    has_many :product_likers
    has_many :liked, through: :product_likers, source: :product
end
