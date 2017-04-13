class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    @expense = Expense.new
  end

  def show
    @expense = Expense.find(params[:id])
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])
    if @expense.update(expense_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def new
  end

  def create
    # @expense = Expense.find(params[:id])
    @expense = Expense.new(expense_params)
    if @expense.save
      redirect_to root_path
      respond_to do |format|
        format.html {redirect_to root_path   }
        format.js
      end
    else
      render :index
    end
  end

  def destroy
    @expense = Expense.find(params[:id])
    @expense.destroy

    redirect_to root_path
  end
  private
  def expense_params
    params.require(:expense).permit(:amount, :description)
  end
end
