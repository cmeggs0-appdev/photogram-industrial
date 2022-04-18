class Like < ApplicationRecord
  belongs_to :fan, class_name: "Users"
  belongs_to :photo
  validates :user_id, uniqueness: { scope: :photo_id, message: "has already liked this photo" }
end