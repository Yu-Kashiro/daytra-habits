class CreateProfiles < ActiveRecord::Migration[8.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.string :nickname, null: false
      t.integer :course, null: false
      t.integer :area, null: false
      t.integer :gender, null: false
      t.date :birthday, null: false
      t.text :introduction
      t.timestamps
    end
  end
end
