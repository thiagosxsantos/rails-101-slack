class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.integer :messagable_id
      t.string :messagable_type

      t.timestamps
    end
  end
end
