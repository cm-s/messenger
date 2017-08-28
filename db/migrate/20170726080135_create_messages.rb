class CreateMessages < ActiveRecord::Migration[5.1]
	def change
		create_table :messages do |t|
			t.integer :conversation_id, index: true
			t.text :content
			t.datetime :read_at
			t.datetime :created_at
		end
	end
end
