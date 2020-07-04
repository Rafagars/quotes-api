class Api::V1::QuotesController < Api::V1::BaseController
  def index
    @quotes = Quote.all
    render json: @quotes
  end

  def show
    @quote = Quote.find(params[:id])
    render json: @quote
  end

  def random
    offset = rand(Quote.count)
    @quote = Quote.offset(offset).first
    render json: @quote
  end
end
