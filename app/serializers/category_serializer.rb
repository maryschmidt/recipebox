class CategorySerializer < ActiveModel::Serializer
  attributes :name, :id, :created_at, :updated_at
end
