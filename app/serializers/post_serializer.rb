class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :media_element, :author_id, :score, :created_at, :updated_at
  has_many :comments 

    class CommentSerializer < ActiveModel::Serializer
      attributes :post_id, :user_id, :content
    end 

end
