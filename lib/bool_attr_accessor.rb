class Person

  def initialize(height, hairiness, greatness)
    @height = height
    @hairiness = hairiness
    @great = greatness
  end


  def self.attribute_writer(*attributes)
      attributes.each do |attribute|
        attribute = attribute[0..-2] if attribute.to_s.end_with?('?')
        self.send(:define_method, attribute.to_s + "=") do |value|
          instance_variable_set("@#{attribute}", value)
        end
      end
  end

  def self.attribute_reader(*attributes)
     attributes.each do |attribute|  
      self.send(:define_method, attribute) do 
        attribute = attribute[0..-2] if attribute.to_s.end_with?('?')
        instance_variable_get("@#{attribute}")       
      end
    end
  end

  def self.attribute_accessor(attribute)
    attribute_reader attribute
    attribute_writer attribute  
  end
  
    attribute_reader :height, :hairiness, :great?
    attribute_writer :height, :great?

end