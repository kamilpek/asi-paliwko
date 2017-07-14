class Vechicle < ApplicationRecord
  has_many :vechicle_fuels

  def name_for_select
    "#{name} – #{plates}"
  end

  mount_uploader :photo, VechiclePhotoUploader
  mount_uploaders :attachments, VechicleAttachmentsUploader

end
