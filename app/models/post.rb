class Post < ApplicationRecord
    validates :title, :body, presence: true
    validates :title, uniqueness: {scope: :title, message: "A Post with that Title already exists."}  
    
    belongs_to :author, class_name: :User
    has_many :comments, dependent: :destroy
end


