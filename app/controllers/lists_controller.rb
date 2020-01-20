class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]  
  before_action :authenticate_user!, except: [:index, :show]

  # GET /lists
  # GET /lists.json
  def index
    @list.user = current_user
    # @list = List.new
    @lists = List.all
    @url_currency = "http://data.fixer.io/api/latest?access_key=63324536fcccf974561850866565236b&symbols=USD,AUD,PHP&format=1"
    @uri_currency = URI(@url_currency)
    @response_currency = Net::HTTP.get(@uri_currency)
    @output_currency = JSON.parse(@response_currency)
    @url_weather = "http://reg.bom.gov.au/fwo/IDQ60901/IDQ60901.94576.json"
    @uri_weather = URI(@url_weather)
    @response_weather = Net::HTTP.get(@uri_weather)
    @output_weather = JSON.parse(@response_weather)
    @url_news = "https://newsapi.org/v2/top-headlines?country=au&apiKey=a9ef7fe5fb064d9c987c2a0717370488"
    @uri_news = URI(@url_news)
    @response_news = Net::HTTP.get(@uri_news)
    @output_news = JSON.parse(@response_news)

  end

  # GET /lists/1
  # GET /lists/1.json
  def show
  end

  # GET /lists/new
  def new
    @list = current_user.list.build
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = current_user.list.build(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to root_url, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to root_url, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'List was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:description, :completed)
    end
end
