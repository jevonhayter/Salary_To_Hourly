class Salary < ActiveRecord::Base
    validates :salary, presence: true
    validates :salary, numericality: {greater_than_or_equal_to: 1}
end
