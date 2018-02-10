class Document < ApplicationRecord
  has_many :sections, inverse_of: :document, dependent: :destroy

  # this permit you to create projects with sections
  # by passing filter you giving assurances that
  # you wont save sections without required params
  # as you specify like name
  accepts_nested_attributes_for :sections, reject_if: proc { |attributes| attributes[:name].blank? }, allow_destroy: true
end
