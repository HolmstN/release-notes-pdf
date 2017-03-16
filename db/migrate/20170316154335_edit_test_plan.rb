class EditTestPlan < ActiveRecord::Migration[5.1]
  def change
    add_column :test_plans, :plan_pieces, :text
  end
end
