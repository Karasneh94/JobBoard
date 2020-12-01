class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :slug
end
