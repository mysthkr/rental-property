class CreatePropers < ActiveRecord::Migration[6.0]
  def change
    create_table :propers do |t|
      t.string :proper_name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :remark

      t.timestamps
    end
  end
end
