class CreateAutoCats < ActiveRecord::Migration
  def change
    create_table :auto_cats do |t|
      t.string :name
      t.string :parent

      t.timestamps
    end
  end
end
