class Course < ActiveRecord::Base
  has_many :enrollment,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: 'Enrollment'

  has_many :enrolled_student,
    through: :enrollment,
    source: :user

  has_many :prerequisite,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: 'Course'

  has_one :instructor,
    primary_key: :instructor_id,
    foreign_key: :id,
    class_name: 'User'
end
