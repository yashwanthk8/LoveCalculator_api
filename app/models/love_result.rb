class LoveResult < ApplicationRecord
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :percentage, presence: true,
                         numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end