AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
classify_request = ClassifyRequest.new('Try text classification', '3')
@words_api.classify(classify_request)