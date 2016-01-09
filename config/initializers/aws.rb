Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new(
    ENV['DYNAMO_ACCESS_KEY_ID'],
    ENV['DYNAMO_SECRET_ACCESS_KEY']
  )
})