class Node
	attr_accessor :data, :ref

	def initialize data,ref
		@data=data
		@ref=ref
	end
end

class ListLinked
	def initialize data
		@header=Node.new(data,nil)
	end
	
	def add(data)
		direc=@header
		while direc.ref !=nil
			direc=direc.ref
		end
		direc.ref=Node.new(data,nil)
	end

	def imprimir
		direc=@header
		list = []
		while direc.ref !=nil
			list = list +[direc.data.to_s]
			direc = direc.ref
		end
		list += [direc.data.to_s]
		puts list.join(",")
	end
end
	data = gets.chomp
	list = ListLinked.new(data)
	while data != "-1"
		data = gets.chomp
		if data != "-1"
			list.add(data)
	end
end
puts list.imprimir
