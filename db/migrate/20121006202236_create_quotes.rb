class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :symbol
      t.decimal :price, :precision => 10, :scale => 2
      t.date :quote_date
      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
