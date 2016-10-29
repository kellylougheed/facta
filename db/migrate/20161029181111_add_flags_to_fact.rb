class AddFlagsToFact < ActiveRecord::Migration
  def change
    add_column :facts, :flags, :integer
  end
end
