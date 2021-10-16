class Post < ApplicationRecord
  has_many :comments, -> { order(:id) }
end
