class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :domain
      t.string :email_domain
      t.string :image_102
      t.string :image_132
      t.string :image_230
      t.string :image_34
      t.string :image_44
      t.string :image_68
      t.string :image_88
      t.string :name
      t.string :uid

      t.timestamps null: false
    end

    add_reference :users, :team, index: true
  end
end
