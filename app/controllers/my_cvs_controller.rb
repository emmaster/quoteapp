class MyCvsController < ApplicationController
  before_action :set_my_cv, only: [:show, :edit, :update, :destroy]

  # GET /my_cvs
  # GET /my_cvs.json
  def index
  end

  # GET /my_cvs/1
  # GET /my_cvs/1.json
  def show
  end

  # GET /my_cvs/new
  def new
    @my_cv = MyCv.new
  end

  # GET /my_cvs/1/edit
  def edit
  end

  # POST /my_cvs
  # POST /my_cvs.json
  def create
    @my_cv = MyCv.new(my_cv_params)

    respond_to do |format|
      if @my_cv.save
        format.html { redirect_to @my_cv, notice: 'My cv was successfully created.' }
        format.json { render :show, status: :created, location: @my_cv }
      else
        format.html { render :new }
        format.json { render json: @my_cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_cvs/1
  # PATCH/PUT /my_cvs/1.json
  def update
    respond_to do |format|
      if @my_cv.update(my_cv_params)
        format.html { redirect_to @my_cv, notice: 'My cv was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_cv }
      else
        format.html { render :edit }
        format.json { render json: @my_cv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_cvs/1
  # DELETE /my_cvs/1.json
  def destroy
    @my_cv.destroy
    respond_to do |format|
      format.html { redirect_to my_cvs_url, notice: 'My cv was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_cv
      @my_cv = MyCv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_cv_params
      params.fetch(:my_cv, {})
    end
end
