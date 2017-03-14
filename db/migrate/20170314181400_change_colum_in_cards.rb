class ChangeColumInCards < ActiveRecord::Migration[5.0]
  def change
    rename_column :cards, :cards_id, :card_id
  end
end
