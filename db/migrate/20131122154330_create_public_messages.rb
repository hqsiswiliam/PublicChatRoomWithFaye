class CreatePublicMessages < ActiveRecord::Migration
  def change
    create_table :public_messages do |t|
      t.string :email
      t.text :public_message

      t.timestamps
    end
  end
end
