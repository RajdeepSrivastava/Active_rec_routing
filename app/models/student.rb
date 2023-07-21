class Student < ApplicationRecord
    validates :first_name, :last_name, :email, presence: true
    validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0}
    validates :gender, presence: true, inclusion: { in: %w(Male Female Other) }
    validates :date_of_birth, presence: true
    serialize :subjects, Array
end
