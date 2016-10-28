class FactsController < ApplicationController
  def index
    @fact = Fact.order("RANDOM()").first
  end

  def new
  end

  def create
    Fact.create(fact_params)
    redirect_to root_path
  end

  private

  def fact_params
    params.require(:fact).permit(:text, :initial_citation)
  end

end
