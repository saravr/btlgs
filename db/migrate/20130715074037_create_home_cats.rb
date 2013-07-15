class CreateHomeCats < ActiveRecord::Migration
  def change
    create_table :home_cats do |t|
      t.string :name

      t.timestamps
    end
  end
end
