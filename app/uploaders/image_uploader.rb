# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

   # Cloudinary
  include Cloudinary::CarrierWave

  # Add Tags
  process :tags => ['avatar_picture']

  # Ruta de destino
  def public_id
    "avatars/#{Cloudinary::Utils.random_public_id}"
  end

  # Lista de extenciones permitidas
  def extension_white_list
    %w(jpg jpeg png)
  end

  process resize_to_limit: [800, 600]

end
