class User
  include Mongoid::Document
  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String
  field :work_place, type: String
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true
  validates :name, :last_name, :mobile_phone, :work_place, presence: true
  has_many :rents
end