class JobSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :bullets

  # def url
  #   job_url(object)
  # end

end
