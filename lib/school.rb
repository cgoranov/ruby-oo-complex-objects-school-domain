# code here!

require 'pry'

class School

    attr_accessor :school_name
    attr_reader :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster.include?(grade)
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster_sort = {}
        @roster.each do |k, v|
            @roster_sort[k] = v.sort 
        end
        @roster_sort.sort.to_h
    end

end