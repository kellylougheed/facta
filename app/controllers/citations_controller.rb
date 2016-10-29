class CitationsController < ApplicationController

  def create
    @fact = Fact.find(params[:fact_id])
    @fact.citations.create(citation_params)
    redirect_to root_path
  end

  private

  def citation_params
    params.require(:citation).permit(:source)
  end

end