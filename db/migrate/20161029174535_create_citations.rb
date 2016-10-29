class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.text :source
      t.integer :fact_id

      t.timestamps
    end

    add_index :citations, :fact_id
  end
end