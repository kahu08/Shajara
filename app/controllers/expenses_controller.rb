class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    @expense = Expense.new
  end

  def show
  end

  def edit
  end

  def new
  end
end
