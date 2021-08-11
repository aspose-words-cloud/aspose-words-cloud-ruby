AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetBookmarkByNameRequest.new('Sample.docx', 'aspose', nil, nil, nil, nil)
@words_api.get_bookmark_by_name(request)