# encoding: utf-8

class DiscountSmallPictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :grid_fs

  version :thumb do
    process :resize_to_limit => [312,160]
  end

  def store_dir
    "/upload/grid/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
