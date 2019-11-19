class User < ApplicationRecord
  # associations
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments


  #instance method
  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
