class QuotesController < ApplicationController
  protect_from_forgery
  before_action :authenticate_admin!, only: [:create, :edit, :update, :destroy]
  before_action :set_quote, only: [:edit, :update, :destroy]

  def index
    @quotes = Quote.order('created_at DESC').paginate(page: params[:page], per_page: 10)
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      flash[:success] = "Quote created successfully"
      redirect_to quotes_path
    else
      render "quotes/new"
    end
  end

  def edit

  end

  def update
    if @quote.update(quote_params)
      flash[:success] = "Quote updated successfully"
      redirect_to quotes_path
    else
      render action: 'edit'
    end
  end

  def destroy
    if @quote.destroy
      flash[:success] = "Quote deleted"
    else
      flash[:danger] = "Couldn't delete quote"
    end
    redirect_to quotes_path
  end

  def search
    @quotes = Quote.where("person = ?", params[:q]).paginate(page: params[:page])
  end

  private
  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:quote, :person)
  end
end
