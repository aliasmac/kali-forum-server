class Post < ApplicationRecord
    belongs_to :author, :class_name => "User"
    has_many :comments
    has_many :commentors, :through => :comments, :source => :commentor

    validates :title, uniqueness: true, presence: true
    validates :content, uniqueness: true, presence: true
    

end
