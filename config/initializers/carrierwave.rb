CarrierWave.configure do |config|
  config.fog_provider = "fog/aws"
  config.fog_credentials = {
    provider:              "AWS",
    aws_access_key_id:     ENV.fetch("MINIO_ACCESS_KEY_ID"),
    aws_secret_access_key: ENV.fetch("MINIO_SECRET_ACCESS_KEY"),
    endpoint:              ENV.fetch("MINIO_API_ENDPOINT"), # 例: http://localhost:9000
    # region:                'ap-northeast-1',
    region:                ENV.fetch("MINIO_REGION"),
    path_style:            true
  }
  config.fog_directory  = ENV.fetch("MINIO_BUCKET")
  config.fog_public     = true
end
