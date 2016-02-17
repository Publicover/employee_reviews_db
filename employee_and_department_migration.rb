require './database_config.rb'

class EmployeeAndDepartmentMigration < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.integer :salary
      t.timestamps
    end

    create_table :departments do |t|
      t.string :name
      t.string :salary
      t.integer :employee_id
      t.timestamps
    end
  end
end
