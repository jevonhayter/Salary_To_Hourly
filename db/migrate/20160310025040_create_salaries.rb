class CreateSalaries < ActiveRecord::Migration
  def change
    create_table :salaries do |t|
      t.integer :salary

      t.timestamps null: false
    end
  end
end
