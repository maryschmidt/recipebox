class RecipeSerializer < ActiveModel::Serializer
  require 'kramdown'

  attributes :name, :description, :body, :created_at, :updated_at,
    :category_name, :id

  def category_name
    object.category.name
  end

  def body
    Kramdown::Document.new(object.body).to_html
  end
end
