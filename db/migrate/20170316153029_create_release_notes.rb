class CreateReleaseNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :release_notes do |t|
      t.decimal :problem_log_number
      t.string :problem_log_title
      t.date :date_commited
      t.string :process_path
      t.text :issue
      t.text :resolution
      t.decimal :service_pack
      t.decimal :patch_number

      t.timestamps
    end
    
    create_table :test_plans do |t|
      t.belongs_to :release_note, index: true, unique: true, foreign_key: true
      t.timestamps
    end
  end
end
