class LoansController < ApplicationController
  def index
    @loans = Loan.all
    @loan = Loan.new
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def create
    @loan = Loan.new(loan_params)
    if @loan.save
      redirect_to loans_path
      respond_to do |format|
        format.html {redirect_to loans_path   }
        format.js
      end
    else
      render :index
    end
  end

  def edit
    @loan = Loan.find(params[:id])
  end

  def  update
    @loan = Loan.find(params[:id])
    if @loan.update(loan_params)
      redirect_to loans_path
    else
      render :edit
    end
  end

  def destroy
    @loan = Loan.find(params[:id])
    @loan.destroy
    redirect_to loans_path
  end

  def new
  end
  private
  def loan_params
    params.require(:loan).permit(:amount,:repayment_date,:to,:description)
  end
end
