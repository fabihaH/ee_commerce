class Product < ActiveRecord::Base
  attr_accessible :content, :name, :title
  has_many :attachments, as: :attachable, dependent: :destroy
  accepts_nested_attributes_for :attachments
end
