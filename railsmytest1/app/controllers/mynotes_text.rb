class MynotesText
  include ActiveModel::Model

  attr_accessor :keyword1, :keyword2

  validates :keyword1, presence: true

end