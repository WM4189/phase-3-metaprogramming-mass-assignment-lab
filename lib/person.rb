require 'pry'

class Person
  def initialize(att)
    att.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end
binding.pry
0

# ruby lib/person.rb