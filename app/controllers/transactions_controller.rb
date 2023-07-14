class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
  end

  def show; end

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
end
