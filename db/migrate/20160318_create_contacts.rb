require_relative '../config'

class CreateContacts < ActiveRecord::Migration
	def change
		create_table :contacts do |t|
			t.string :list
			t.string :Name
			t.string :Phone
			t.string :Address
		end
	end
end