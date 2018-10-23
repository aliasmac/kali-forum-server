class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :media_element, :author_id
  has_many :comments 

    class CommentSerializer < ActiveModel::Serializer
      attributes :post_id, :user_id, :comment
    end 
end
