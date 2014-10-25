class RecipeSerializer < ActiveModel::Serializer
  attributes :name, :description, :body, :created_at, :updated_at,
    :category_name, :id

  def category_name
    object.category.name
  end
end
