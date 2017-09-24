class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :user, index: true
      t.text :text, null: false

      t.timestamps null: false
    end
  end
end
