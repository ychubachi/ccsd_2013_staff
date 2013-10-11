class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :contents
      t.string :date

      t.timestamps
    end
  end
end
