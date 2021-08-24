AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
classify_request = ClassifyRequest.new(text: 'Try text classification', best_classes_count: '3')
@words_api.classify(classify_request)