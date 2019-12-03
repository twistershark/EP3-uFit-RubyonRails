class Favorite < ApplicationRecord
  belongs_to :exercises
  belongs_to :user
end
