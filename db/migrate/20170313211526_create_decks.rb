class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.boolean :complete

      t.timestamps
    end
  end
end
