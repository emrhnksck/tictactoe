class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.json :state
      t.string :current_symbol

      t.timestamps
    end
  end
end
