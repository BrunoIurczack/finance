class TransactionsController < ApplicationController
  before_action :set_transaction, only: %i[ show edit update destroy ]

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
    if @transaction.update(transaction_params)
      redirect_to transaction_url(@transaction), notice: "Transaction was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @transaction.destroy
    redirect_to transactions_path
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    def transaction_params
      params.require(:transaction).permit(:transaction_type, :value, :description, :transaction_date, :status)
    end

end
