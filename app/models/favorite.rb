class Favorite < ApplicationRecord
  belongs_to :exercicios
  belongs_to :user
end
