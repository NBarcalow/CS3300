class PortfolioProjectsController < ApplicationController
  before_action :set_portfolio_project, only: %i[ show edit update destroy ]

  # GET /portfolio_projects or /portfolio_projects.json
  def index
    @portfolio_projects = PortfolioProject.all
  end

  # GET /portfolio_projects/1 or /portfolio_projects/1.json
  def show
  end

  # GET /portfolio_projects/new
  def new
    @portfolio_project = PortfolioProject.new
  end

  # GET /portfolio_projects/1/edit
  def edit
  end

  # POST /portfolio_projects or /portfolio_projects.json
  def create
    @portfolio_project = PortfolioProject.new(portfolio_project_params)

    respond_to do |format|
      if @portfolio_project.save
        format.html { redirect_to @portfolio_project, notice: "Portfolio project was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio_projects/1 or /portfolio_projects/1.json
  def update
    respond_to do |format|
      if @portfolio_project.update(portfolio_project_params)
        format.html { redirect_to @portfolio_project, notice: "Portfolio project was successfully updated." }
        format.json { render :show, status: :ok, location: @portfolio_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @portfolio_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_projects/1 or /portfolio_projects/1.json
  def destroy
    @portfolio_project.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_projects_url, notice: "Portfolio project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_project
      @portfolio_project = PortfolioProject.friendly.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def portfolio_project_params
      params.require(:portfolio_project).permit(:title, :description, :slug)
    end
end
