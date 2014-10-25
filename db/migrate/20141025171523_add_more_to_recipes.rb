class AddMoreToRecipes < ActiveRecord::Migration
  def change
    change_table :recipes  do |t|
      t.text :description, :body, null: false, default: ''
    end
  end
end
