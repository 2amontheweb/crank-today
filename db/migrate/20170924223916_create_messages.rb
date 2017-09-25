class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.boolean :reset, default: false, null: false
      t.text :text, null: false
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
