CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     "#{ENV["S3_ID"]}",                        # required
    aws_secret_access_key: "#{ENV["SECRET_KEY"]}",                        # required
    region:                'ap-northeast-2'                  # optional, defaults to 'us-east-1'
    # host:                  's3.example.com',             # optional, defaults to nil
    # endpoint:              's3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'hufslikelion'                                   # required
  config.fog_public     = false                                                 # optional, defaults to true
#   config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end

# CarrierWave.configure do |config|
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     'AKIAJTPBIOKGU7FBDK6Q',                        # required
#     aws_secret_access_key: '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',                        # required
#     region:                'ap-northeast-2'                  # optional, defaults to 'us-east-1'
#     # host:                  's3.example.com',             # optional, defaults to nil
#     # endpoint:              'ap-northeast-2.queue.amazonaws.com' # optional, defaults to nil
#   }
#   config.fog_directory  = 'image0517'                                   # required
#   #config.fog_public     = false                                                 # optional, defaults to true
#   #config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
# end