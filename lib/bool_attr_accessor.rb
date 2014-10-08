# class Class


#   # def height
#   #   @height
#   # end

#   def self.attribute_reader(attribute)
#     self.send(:define_method, attribute) do
#       eval("@" + attribute.to_s)       
#     end
#   end

  # def self.attribute_writer(attribute)
  #   self.send(:define_method, attribute.to_s + "=") do 
  #     puts "dskjfhsfhs" 
  #   end
  # end

#   # attribute_writer :height
# end


class Person


  def initialize(height)
    @height = height
  end

  # def height
  #   @height
  # end

  def self.attribute_writer(attribute)
    self.send(:define_method, attribute.to_s + "=") do |value|
      instance_variable_set("@#{attribute}", value)
    end
  end

  def self.attribute_reader(attribute)
    self.send(:define_method, attribute) do 
      instance_variable_get("@#{attribute}")       
    end
  end

  def self.attribute_accessor(attribute)
    attribute_reader attribute
    attribute_writer attribute  
  end
  
  attribute_accessor :height

end