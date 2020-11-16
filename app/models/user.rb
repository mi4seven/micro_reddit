class User < ApplicationRecord
    validates :username, :email, presence: true
    validates :username, length: {minimum: 2}
    validates :email, uniqueness: {scope: :email, message: "A User with that email already exists."}
    validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ , message: "Example email is micro_redit@gmail.com.au"}    

    has_many :posts,
        foreign_key: :author_id,
        dependent: :destroy

    has_many :comments,
        foreign_key: :author_id,
        dependent: :destroy
end
