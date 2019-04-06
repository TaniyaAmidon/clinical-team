class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :photo
      t.boolean :onleave
      t.string :type
      t.string :bio

      t.timestamps
    end
  end
end
