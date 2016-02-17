require './employee'
require 'active_record'

class Department < ActiveRecord::Base
  has_many :employees

  # def add_employee(new_employee)
  #   self.staff << new_employee
  # end

  def department_salary
    employees.reduce(0.0) {|sum, e| sum + e.salary}
  end

  def add_employee_review(review)
    self.review = review
  end

  def department_raise(alloted_amount)
    raise_eligible = self.staff.select {|e| yield(e)}
    amount = alloted_amount / raise_eligible.length
    raise_eligible.each {|e| e.raise_by_amount(amount)}
  end
end
