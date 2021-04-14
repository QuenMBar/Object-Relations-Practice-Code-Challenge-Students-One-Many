class Student < ActiveRecord::Base
    belongs_to :cohort, class_name: 'Cohort', foreign_key: 'cohort_id'

    def current_mod
        cohort.current_mod
    end
end
