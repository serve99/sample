class MynoteTextsController < ApplicationController
  before_action :set_mynote_text, only: [:show, :edit, :update, :destroy]

  # GET /mynote_texts
  # GET /mynote_texts.json
  def index
    @mynote_texts = MynoteText.all
  end

  # GET /mynote_texts/1
  # GET /mynote_texts/1.json
  def show
  end

  # GET /mynote_texts/new
  def new
    @mynote_text = MynoteText.new
  end

  # GET /mynote_texts/1/edit
  def edit
  end

  # POST /mynote_texts
  # POST /mynote_texts.json
  def create
    @mynote_text = MynoteText.new(mynote_text_params)

    respond_to do |format|
      if @mynote_text.save
        format.html { redirect_to @mynote_text, notice: 'Mynote text was successfully created.' }
        format.json { render :show, status: :created, location: @mynote_text }
      else
        format.html { render :new }
        format.json { render json: @mynote_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mynote_texts/1
  # PATCH/PUT /mynote_texts/1.json
  def update
    respond_to do |format|
      if @mynote_text.update(mynote_text_params)
        format.html { redirect_to @mynote_text, notice: 'Mynote text was successfully updated.' }
        format.json { render :show, status: :ok, location: @mynote_text }
      else
        format.html { render :edit }
        format.json { render json: @mynote_text.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mynote_texts/1
  # DELETE /mynote_texts/1.json
  def destroy
    @mynote_text.destroy
    respond_to do |format|
      format.html { redirect_to mynote_texts_url, notice: 'Mynote text was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mynote_text
      @mynote_text = MynoteText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mynote_text_params
      params.require(:mynote_text).permit(:keyword1, :keyword2)
    end
end
