class	TodoList	
	def initialize(data)
		@main = data
	end

	def get_item(data)	
		p @main[data] 
	end

	def add_item(item)
		@main << item
	end

	def delete_item(item)
		@main.delete(item)
	end

	def get_items	
		p @main
	end

end