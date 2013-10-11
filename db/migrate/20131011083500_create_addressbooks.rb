class CreateAddressbooks < ActiveRecord::Migration
  def change
    create_table :addressbooks do |t|
      t.string :zip
      t.string :address

      t.timestamps
    end
  end
end
