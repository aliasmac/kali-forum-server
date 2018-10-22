class User < ApplicationRecord
    has_many :authored_posts, :class_name => "Post", :foreign_key => :author_id
    has_many :comments
    # read only relationship
    has_many :commented_posts, :through => :comments, :source => :post
end
