require 'spec_helper'

describe Recipe do
  before do
    @recipe = Recipe.new(name: "bolognese")
  end

  describe "when name is already taken" do
    before do
      recipe_with_same_name = @recipe.dup
      recipe_with_same_name.name = @recipe.name.upcase
      recipe_with_same_name.save
    end

    it { should_not be_valid }
  end
end
