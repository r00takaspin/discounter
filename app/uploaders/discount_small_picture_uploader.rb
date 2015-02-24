# encoding: utf-8

class DiscountSmallPictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  version :thumb do
    process :resize_to_limit => [312,160]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
