class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
    add_column :posts, :user_id, :integer
  end
end
