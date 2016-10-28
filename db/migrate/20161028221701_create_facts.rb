class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|

      t.string :text
      t.string :initial_citation

      t.timestamps
    end
  end
end
