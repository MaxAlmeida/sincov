class CreateBudgetProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :budget_products do |t|
      t.string :quantity
      t.string :integer
      t.references :product, foreign_key: true
      t.belongs_to :budget

      t.timestamps
    end
  end
end
