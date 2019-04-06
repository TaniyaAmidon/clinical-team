class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :string
      t.string :lastname
      t.string :string
      t.string :bio
      t.string :string
      t.string :photo
      t.string :string
      t.string :leave
      t.string :boolean
      t.string :type
      t.string :string

      t.timestamps
    end
  end
end
