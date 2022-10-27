class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.references :campaign, null: false, foreign_key: true
      t.string :title
      t.text :body, null: false
      t.boolean :player_visible, default: false

      t.timestamps
    end
  end
end
