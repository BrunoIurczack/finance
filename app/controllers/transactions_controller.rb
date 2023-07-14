class TransactionsController < ApplicationController
    #before_action :set_transaction, only: %i[ show ]

  def index
    @transactions = Transaction.all
  end

  def show 
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def edit; end

  def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      redirect_to transaction_url(@transaction), notice: "Transaction was successfully created." 
    else
      render :new, status:  :unprocessable_entity 
    end
  end

  def update
  end

  def destroy
  end

  private
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

end
