class FactsController < ApplicationController
  def index
    @fact = Fact.order("RANDOM()").first
  end

  def new
  end

  def create
    @fact = Fact.create(fact_params)
     if @fact.invalid?
      flash[:error] = 'Please enter a valid fact longer than 10 characters.'
    end
    redirect_to root_path
  end

  private

  def fact_params
    params.require(:fact).permit(:text, :initial_citation)
  end

end
