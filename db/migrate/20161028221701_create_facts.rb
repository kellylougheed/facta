class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|

      t.text :text
      t.text :initial_citation

      t.timestamps
    end
  end
end
