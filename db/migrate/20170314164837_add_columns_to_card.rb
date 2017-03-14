class AddColumnsToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :cards_id, :string
    add_column :cards, :name, :string
    add_column :cards, :national_pokedex_number, :integer
    add_column :cards, :image_url, :string
    add_column :cards, :subtype, :string
    add_column :cards, :supertype, :string
    add_column :cards, :hp, :integer
    add_column :cards, :number, :integer
    add_column :cards, :artist, :string
    add_column :cards, :rarity, :string
    add_column :cards, :series, :string
    add_column :cards, :set, :string
    add_column :cards, :set_code, :string
  end
end
