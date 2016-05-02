class IngredientsController < ApplicationController
	def create
		ingredient = Ingredient.create(ingredient_params)
		#variable^
		if ingredient.errors.any?
	end

	def show
		ingredient = Ingredient.find_by(id: params[:id])
		
end
