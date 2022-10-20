class CreatePlaySessions < ActiveRecord::Migration[7.0]
  def change
    create_table :play_sessions do |t|
      t.datetime :event_date
      t.string :name
      t.references :campaign

      t.timestamps
    end
  end
end
