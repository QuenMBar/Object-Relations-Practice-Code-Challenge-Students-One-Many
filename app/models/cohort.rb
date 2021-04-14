class Cohort < ActiveRecord::Base
    has_many :students, class_name: 'Student'

    def add_student(name, age)
        Student.create(name: name, age: age, cohort: self)
    end

    def average_age
        students.average(:age)
    end

    def total_students
        students.size
    end

    def self.biggest
        all.max_by { |m| m.students.size }
    end

    def self.sort_by_mod
        all.sort_by(&:current_mod)
    end
end
