AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteAllParagraphTabStopsRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_all_paragraph_tab_stops(delete_request)