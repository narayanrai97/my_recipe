class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def new
  end

   def create
      recipe = Recipe.new     # instance of Recipe
      recipe.name = params['name']
      recipe.category = params['category']
      recipe.image = params['image']
      recipe.prep_time = params['prep_time']
      recipe.cook_time = params['cook_time']
      recipe.yields = params['yield']                # ? yield = yields
      recipe.ingredients = params['ingredients']
      recipe.method = params['method']
      recipe.save
      redirect_to '/'
  end

  def search_form
  end

  def search
     name = params[:name]
     @recipes = Recipe.where("name like ?", "%#{name}%")
  end

  def edit
      @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    @recipe.name = params['name']
    @recipe.category = params['category']
    @recipe.image = params['image']
    @recipe.prep_time = params['prep_time']
    @recipe.cook_time = params['cook_time']
    @recipe.yields = params['yields']
    @recipe.ingredients = params['ingredients']
    @recipe.method = params['method']

    @recipe.save

    redirect_to '/'
  end

end
