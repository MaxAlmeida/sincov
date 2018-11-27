class AddTelephoneToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :telephone, :number
  end
end
