class Student

	def method_missing(name)
		if name.to_s.match(/^has_\w+\?$/)
			self.class.send(:define_method, name){ false }
			self.send(name)
		else
			super
		end
	end

end

