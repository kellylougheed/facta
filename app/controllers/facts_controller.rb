class FactsController < ApplicationController
  def index
    @facts = Fact.all
    if params[:search]
      @facts = Fact.search(params[:search]).order("created_at DESC")
    else
      @facts = Fact.all.order("created_at DESC")
    end
  end

  def random
    @fact = Fact.order("RANDOM()").first
    @citation = Citation.new
  end

  def all
    @facts = Fact.paginate(:page => params[:page], :per_page => 5)
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

  def show
    @fact = Fact.find(params[:id])
    @citation = Citation.new
  end

  def update
    Fact.find(params[:id]).update_attributes(fact_params)
  end

  private

  def fact_params
    params.require(:fact).permit(:text, :initial_citation, :flags)
  end

end
