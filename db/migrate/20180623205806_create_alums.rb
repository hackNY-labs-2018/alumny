class CreateAlums < ActiveRecord::Migration[5.1]
  def change
    create_table :alums do |t|
      t.string :firstname
      t.string :lastname
      t.text :bio
      t.string :hometown
      t.string :headshot_url

      t.timestamps
    end
  end
end
