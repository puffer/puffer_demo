class CreateSnippets < ActiveRecord::Migration
  def self.up
    create_table :snippets do |t|
      t.string :name
      t.text :body

      t.timestamps
    end

    add_index :snippets, :name
  end

  def self.down
    drop_table :snippets
  end
end
