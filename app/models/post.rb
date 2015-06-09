class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :description,              type: String, default: ""
  field :text,                     type: String, default: ""
  field :type,                     type: Array, default: ["common"]

  #Validations
  validates :description, length: { minimum: 0, maximum: 40 }
  validates :text, presence: true
end
