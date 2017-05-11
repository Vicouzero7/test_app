class AddUseridToTruites < ActiveRecord::Migration[5.0]
	def change
		add_reference :truites, :user, foreign_key :true
	end
end