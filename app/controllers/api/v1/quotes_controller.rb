class Api::V1::QuotesController < Api::V1::BaseController
  def index
    @quotes = Quote.paginate(page: params[:page], per_page: 10)
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

  def search
    @quotes = Quote.where("person = ?", params[:q]).paginate(page: params[:page])
    render json: @quotes
  end
end
