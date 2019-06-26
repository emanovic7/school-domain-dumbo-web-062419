# code here!

require 'pry'

class School
  attr_accessor :grade

  def initialize(name)
    @name = name
    @roster = {}
  end


  def roster
    @roster
  end

  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end


  def grade(grade)
    @roster[grade]
  end

  def helper_method
    @roster.values
  end

  def sort
    #sorted_array = @roster.sort.to_h
    #binding.pry

    @roster.each do |key, value|
        @roster[key] = value.sort
    end

    # sorted_array.each do |element|
    #
    # end
  #end
  #@roster.values.sort

    #binding.pry
  end

end
