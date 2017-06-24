class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :image
      t.string :prep_time
      t.string :cook_time
      t.string :yields
      t.string :ingredients
      t.string :method
    end
  end
end
