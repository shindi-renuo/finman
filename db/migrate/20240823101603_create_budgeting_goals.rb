class CreateBudgetingGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :budgeting_goals do |t|
      t.string :name
      t.decimal :amount
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
