require 'pry'
class School
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end
    
    def add_student(student_name, grade)
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            binding.pry
            students.sort!
            
        end
    end
end

