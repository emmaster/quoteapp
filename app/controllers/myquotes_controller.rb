class MyquotesController < ApplicationController
  before_action :set_myquote, only: [:show, :edit, :update, :destroy]

  # GET /myquotes
  # GET /myquotes.json
  def index
  end

  # GET /myquotes/1
  # GET /myquotes/1.json
  def show
  end

  # GET /myquotes/new
  def new
    @myquote = Myquote.new
  end

  # GET /myquotes/1/edit
  def edit
  end

  # POST /myquotes
  # POST /myquotes.json
  def create
    @myquote = Myquote.new(myquote_params)

    respond_to do |format|
      if @myquote.save
        format.html { redirect_to @myquote, notice: 'Myquote was successfully created.' }
        format.json { render :show, status: :created, location: @myquote }
      else
        format.html { render :new }
        format.json { render json: @myquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myquotes/1
  # PATCH/PUT /myquotes/1.json
  def update
    respond_to do |format|
      if @myquote.update(myquote_params)
        format.html { redirect_to @myquote, notice: 'Myquote was successfully updated.' }
        format.json { render :show, status: :ok, location: @myquote }
      else
        format.html { render :edit }
        format.json { render json: @myquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myquotes/1
  # DELETE /myquotes/1.json
  def destroy
    @myquote.destroy
    respond_to do |format|
      format.html { redirect_to myquotes_url, notice: 'Myquote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myquote
      @myquote = Myquote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myquote_params
      params.fetch(:myquote, {})
    end
end
