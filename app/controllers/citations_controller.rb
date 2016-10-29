class CitationsController < ApplicationController

  def create
    @fact = Fact.find(params[:fact_id])
    @citation = @fact.citations.new(citation_params)
    if @citation.invalid?
      flash[:error] = 'Please enter a valid citation longer than 5 characters.'
      redirect_to root_path
    else
      @citation.flags = 0
      @citation.save
      redirect_to root_path
      flash[:success] = 'Thanks for adding a citation!'
    end
  end

  private

  def citation_params
    params.require(:citation).permit(:source)
  end

end