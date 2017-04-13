class DebtsController < ApplicationController
  def index
    @debts = Debt.all
    @debt = Debt.new
  end

  def show
    @debt = Debt.find(params[:id])
  end

  def create

  end

  def edit
  end

  def new
  end
end
