class CreatePlats < ActiveRecord::Migration[6.1]
  def change
    create_table :plats do |t|
      t.string :name
      t.string :age
      t.string :image

      t.timestamps
    end
  end
end
