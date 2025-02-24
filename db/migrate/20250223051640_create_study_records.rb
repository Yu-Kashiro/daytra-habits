class CreateStudyRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :study_records do |t|
      t.references :user, null: false, foreign_key: true
      t.date :study_date
      t.timestamps
    end
  end
end
