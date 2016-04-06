class PackingJobsController < ApplicationController
  before_action :set_packing_job, only: [:show, :edit, :update, :destroy]

  # GET /packing_jobs
  # GET /packing_jobs.json
  def index
    @packing_jobs = PackingJob.all.sort { |a,b|  b.created_at <=> a.created_at}
  end

  # GET /packing_jobs/1
  # GET /packing_jobs/1.json
  def show
    @locations = Location.all
  end

  # GET /packing_jobs/new
  def new
    @packing_job = PackingJob.new
  end

  # GET /packing_jobs/1/edit
  def edit
  end

  # POST /packing_jobs
  # POST /packing_jobs.json
  def create
    @packing_job = PackingJob.new(packing_job_params)

    respond_to do |format|
      if @packing_job.save
        format.html { redirect_to @packing_job, notice: 'Packing job was successfully created.' }
        format.json { render :show, status: :created, location: @packing_job }
      else
        format.html { render :new }
        format.json { render json: @packing_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packing_jobs/1
  # PATCH/PUT /packing_jobs/1.json
  def update
    respond_to do |format|
      if @packing_job.update(packing_job_params)
        format.html { redirect_to packing_jobs_url, notice: 'Packing job was successfully updated.' }

        format.json { render :show, status: :ok, location: @packing_job }
      else
        format.html { render :edit }
        format.json { render json: @packing_job.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packing_jobs/1
  # DELETE /packing_jobs/1.json
  def destroy
    @packing_job.destroy
    respond_to do |format|
      format.html { redirect_to packing_jobs_url, notice: 'Packing job was successfully destroyed.' }
      # @job=assignToNewJob
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packing_job
      @packing_job = PackingJob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def packing_job_params
      params.require(:packing_job).permit(:customer_id, :shoppingOrder_id)
    end
end
