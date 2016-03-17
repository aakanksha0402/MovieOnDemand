class MovieSuggestionsController < ApplicationController
  before_action :set_movie_suggestion, only: [:show, :edit, :update, :destroy]

  # GET /movie_suggestions
  # GET /movie_suggestions.json
  def index
    @movie_suggestions = MovieSuggestion.all
  end

  # GET /movie_suggestions/1
  # GET /movie_suggestions/1.json
  def show
  end

  # GET /movie_suggestions/new
  def new
    @movie_suggestion = MovieSuggestion.new
  end

  # GET /movie_suggestions/1/edit
  def edit
  end

  # POST /movie_suggestions
  # POST /movie_suggestions.json
  def create
    @movie_suggestion = MovieSuggestion.new(movie_suggestion_params)

    respond_to do |format|
      if @movie_suggestion.save
        format.html { redirect_to @movie_suggestion, notice: 'Movie suggestion was successfully created.' }
        format.json { render :show, status: :created, location: @movie_suggestion }
      else
        format.html { render :new }
        format.json { render json: @movie_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movie_suggestions/1
  # PATCH/PUT /movie_suggestions/1.json
  def update
    respond_to do |format|
      if @movie_suggestion.update(movie_suggestion_params)
        format.html { redirect_to @movie_suggestion, notice: 'Movie suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie_suggestion }
      else
        format.html { render :edit }
        format.json { render json: @movie_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_suggestions/1
  # DELETE /movie_suggestions/1.json
  def destroy
    @movie_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to movie_suggestions_url, notice: 'Movie suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_suggestion
      @movie_suggestion = MovieSuggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_suggestion_params
      params.require(:movie_suggestion).permit(:user_id, :name, :details, :status, :is_deleted)
    end
end
