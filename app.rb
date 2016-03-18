require_relative 'config/application'

def self.run(argv)
	prompt = argv[0].to_s
	add(argv) 		if prompt == "--add"
	list 			if prompt == "--list"
	update(argv) 	if prompt == "--update"
	delete(argv) 	if prompt == "--delete"
end

def add(details)
	attributes = {}
	attributes[:Name] 		= details[1].to_s
	attributes[:Phone] 		= details[2].to_s
	attributes[:Address] 	= details[3].to_s
	Contact.create(attributes)
end

def list
	list = Contact.all
	puts "list".ljust(6) + "Name".ljust(30) + "Phone".ljust(15) + "Address"
	puts "====".ljust(6) + "====".ljust(30) + "=====".ljust(15) + "======="
	list.each do |x|
		puts "#{x[:id]}".ljust(6) + "#{x[:Name]}".ljust(30) + "#{x[:Phone]}".ljust(15) + "#{x[:Address]}"
	end
end

def update(details)
	unless details[1].to_i > Contact.count
		contact = Contact.find(details[1].to_i)
		contact.update(Name: details[2].to_s, Phone: details[3].to_s, Address: details[4].to_s) unless details[2] == nil
	else
		puts "A contact of that ID does not exist."
	end
end

def delete(id)
	id = id[1].to_i
	Contact.all.each {|x| @check = true if id == x[:id]}
	if @check == true
		contact = Contact.find(id)
		contact.destroy
	else
		puts "A contact of that ID does not exist."
	end
end

run(ARGV)