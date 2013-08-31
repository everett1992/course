# org.rb
require './course.rb'
class String
  def is_numeric?
    self.match(/^\d$/)
  end
end

class Org
  attr_reader :courses
  def initialize cources
    @courses = Array.new
    cources.each do |k, v|
      @courses << Course.new(k, v['notes'], v['book'])
    end
  end

  def list
    @courses.map(&:title)
  end

  # Return Array of courses that match the id
  def get id
    if id.is_a?(Integer) || id.to_s.is_numeric?
     c =  @courses[id.to_i]
     c ? [c] : []
    else
      @courses.select { |course| course.title.match(/^#{id}/) }
    end
  end
end
