class Post < ApplicationRecord
    belongs_to :author, :class_name => "User"
    has_many :comments
    has_many :commentors, :through => :comments, :source => :commentor
end
