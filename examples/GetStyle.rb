AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetStyleRequest.new('Sample.docx', 'Heading 1', nil, nil, nil, nil)
@words_api.get_style(request)