class AddFlagsToCitation < ActiveRecord::Migration
  def change
    add_column :citations, :flags, :integer
  end
end
