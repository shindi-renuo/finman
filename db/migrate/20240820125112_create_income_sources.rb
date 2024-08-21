class CreateIncomeSources < ActiveRecord::Migration[7.1]
  def change
    create_table :income_sources do |t|
      t.string :name
      t.decimal :amount
      t.date :date
      t.string :interval
      t.string :source_type

      t.timestamps
    end
  end
end
