class CompaniesController < ApplicationController
  def index
  	@companies = Company.all
  end

  def show
  	@company = Company.find(params[:id])
  end

  def new
  	@company = Company.new
  end

  def create
  	@company = Company.create(params[:company])
	  @company.save
	  redirect_to companies_path
  end

  def edit
  	@company = Company.find(params[:id])
  end

  def update
  	@company = Company.find(params[:id])
  	@company.update_attributes(params[:company])
  	redirect_to companies_path
  end

  def destroy
	  @company = Company.find(params[:id])
	  @company.destroy
	  redirect_to companies_path 	
  end
end
