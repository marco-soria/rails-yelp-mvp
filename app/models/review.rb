class Review < ApplicationRecord
  belongs_to :restaurant

  # validates :content, presence: {message: "Contenido no puede estar en blanco"}
  # validates :rating, presence: {message: "Rating no puede ser vacio"}
  # validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5, }

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }

  # validates :rating, numericality: { only_integer: true }
  # validates :rating, inclusion: { in: 0..5 }
end
