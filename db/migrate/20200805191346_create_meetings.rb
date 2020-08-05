class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.boolean :liked
      t.text :crush
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
