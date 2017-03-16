class AddTestPlanToReleaseNotes < ActiveRecord::Migration[5.1]
  def change
    add_column :release_notes, :test_plan, :text
  end
end
