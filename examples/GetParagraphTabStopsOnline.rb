AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetParagraphTabStopsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil, nil)
@words_api.get_paragraph_tab_stops_online(request)