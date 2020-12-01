require 'pry'
class School

attr_reader :name, :roster
#so that nobody else can change the names or roster. 

def initialize(name)
#like a factory
    @name = name
    @roster = Hash.new {|h, k| h[k] = []}
    #Hash.new {|hash, key| hash[key] = [] }
    #It allows you to define default value as an array
end

def roster
    @roster 
end
#allows me to call on the roster after creating it 

def add_student(name,grade)
self.roster[grade] << name 
end
#pass names


def grade(grade)
    self.roster[grade]
end
#assign grades

def sort
    self.roster.each do |grade, students|
        students.sort!
        #sort students by grade
    end
end
end

