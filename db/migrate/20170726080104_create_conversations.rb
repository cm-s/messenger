class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    create_table :conversations do |t|
    	t.integer :user_id, index: true
    	t.string :recipients
      t.datetime :created_at
    end
  end
end
