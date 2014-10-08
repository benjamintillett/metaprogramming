class Student

	attr_accessor :awards

	def initialize
		@awards = []
	end

	def method_missing(name)
		if name.to_s.match(/^has_\w+\?$/)
			self.class.send(:define_method, name) do 
				return true if @awards.include? name[4..-2].to_sym
				false
			end
			self.send(name)
		else
			super
		end
	end

	def award(sticker)
		 @awards << sticker 
	end

end

class Ben

    self.send(:define_method, "name?=") do |value|
    	@name = value
    end

	def name
		@name
	end 

end 
