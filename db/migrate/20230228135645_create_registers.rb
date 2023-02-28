class CreateRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :registers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :tour
      t.datetime :date

      t.timestamps
    end
  end
end
