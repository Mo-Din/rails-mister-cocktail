class RenameCoktailToCocktail < ActiveRecord::Migration[5.2]
  def change
    rename_table :coktail, :cocktails
  end
end
