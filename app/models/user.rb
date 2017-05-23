class User < ActiveRecord::Base
  has_many :enrollment,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: 'Enrollment'

  has_many :course,
    through: :enrollment,
    source: :course
end
