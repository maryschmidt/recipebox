class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  # GET /recipes
  def index
    @recipes = Recipe.all
    respond_with(@recipes, each_serializer: RecipeSerializer, root: false)
  end

  # GET /recipes/1
  def show
    respond_with(@recipe, serializer: RecipeSerializer, root: false)
  end

  # GET /recipes/new
  def new
    @categories = Category.all
    respond_with(@categories, each_serializer: CategorySerializer, root: false)
  end

  # GET /recipes/1/edit
  def edit
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:name, :description, :body, :category_id)
    end
end
