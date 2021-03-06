require './database_config.rb'

class EmployeeAndDepartmentMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.decimal :salary, precision: 8, scale: 2
      t.string :review
      t.boolean :satisfactory
      t.timestamps null: false
    end

    create_table :departments do |t|
      t.string :name
      t.string :salary
      t.integer :employee_id
      t.integer :staff
      t.timestamps null: false
    end

  end
end
