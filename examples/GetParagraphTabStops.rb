AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetParagraphTabStopsRequest.new(name: 'Sample.docx', index: 0)
@words_api.get_paragraph_tab_stops(request)