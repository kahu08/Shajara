class loansController < ApplicationController
  def index
    @loans = loan.all
    @loan = loan.new
  end

  def show
    @loan = loan.find(params[:id])
  end

  def create
    @loan = loan.new(loan_params)
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
    @loan = loan.find(params[:id])
  end

  def  update
    @loan = loan.find(params[:id])
    if @loan.update(loan_params)
      redirect_to loans_path
    else
      render :edit
    end
  end

  def destroy
    @loan = loan.find(params[:id])
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
