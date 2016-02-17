require './employee_and_department_migration.rb'
require './database_config.rb'
require './employee.rb'
require './department.rb'

EmployeeAndDepartmentMigration.migrate(:up)
