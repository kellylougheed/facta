class FactsController < ApplicationController
  def index
    @fact = Fact.order("RANDOM()").first
    @citation = Citation.new
  end

  def all
    @facts = Fact.all
  end

  def create
    @fact = Fact.new(fact_params)
    if @fact.invalid?
      flash[:error] = 'Please enter a valid fact longer than 10 characters.'
      redirect_to root_path
    else
      @fact.flags = 0
      @fact.save
      redirect_to root_path
      flash[:success] = 'Thanks for adding a fact!'
    end
  end

  def update
    Fact.find(params[:id]).update_attributes(fact_params)
  end

  private

  def fact_params
    params.require(:fact).permit(:text, :initial_citation, :flags)
  end

end
