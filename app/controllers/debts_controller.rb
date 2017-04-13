class DebtsController < ApplicationController
  def index
    @debts = Debt.all
    @debt = Debt.new
  end

  def show
    @debt = Debt.find(params[:id])
  end

  def create
    @debt = Debt.new(debt_params)
    if @debt.save
      redirect_to debts_path
      respond_to do |format|
        format.html {redirect_to debts_path   }
        format.js
      end
    else
      render :index
    end
  end

  def edit
    @debt = Debt.find(params[:id])
  end

  def  update
    @debt = Debt.find(params[:id])
    if @debt.update(debt_params)
      redirect_to debts_path
    else
      render :edit
    end
  end

  def destroy
    @debt = Debt.find(params[:id])
    @debt.destroy
    redirect_to debts_path
  end

  def new
  end
  private
  def debt_params
    params.require(:debt).permit(:amount,:receive_date,:from,:description)
  end
end
