AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetStyleRequest.new(name: 'Sample.docx', style_name: 'Heading 1')
@words_api.get_style(request)