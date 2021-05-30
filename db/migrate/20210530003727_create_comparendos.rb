class CreateComparendos < ActiveRecord::Migration[6.1]
  def change
    create_table :comparendos do |t|
      t.float :valor
      t.date :fecha
      t.boolean :estado
      t.references :Prestamo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
