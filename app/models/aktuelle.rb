class Aktuelle < ActiveRecord::Base

  has_many :aktuelle_translations
  mount_uploader :image, AktuelleImageUploader

  translates :title, :text
  accepts_nested_attributes_for :translations

  validates_presence_of :title

  def to_param
      "#{id}-#{title.parameterize}"
  end

end
