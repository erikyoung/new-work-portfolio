class ImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process :convert => 'png'
  # process :tags => [Rails.env]
  process :resize_to_fit => [600, 10000]

  def public_id
    "#{Rails.env}/#{model.class.name}/#{secure_token}"
  end 

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end