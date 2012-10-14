class CreateStockSymbols < ActiveRecord::Migration
  def self.up
    create_table :stock_symbols do |t|
      t.string :letters
      t.string :name
      t.text :info

      t.timestamps
    end

    add_column :quotes, :stock_symbol_id, :integer
    remove_column :quotes, :symbol

    create_table :strategies_stock_symbols, :id => false do |t|
      t.references :strategy, :stock_symbol
    end

  end
  def self.down
    drop_table :stock_symbols
  end
end
