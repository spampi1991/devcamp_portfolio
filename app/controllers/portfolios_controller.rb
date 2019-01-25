class PortfoliosController < ApplicationController

  before_action :set_portfolio, only: [:destroy, :show, :edit, :update]

  def index
    @portfolios_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def edit
  end

  def show
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'Portfolio item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end

    def set_portfolio
      @portfolio_item = Portfolio.find(params[:id])
    end
end
