AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteParagraphTabStopOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), 72.0, 0, '', nil, nil, nil)
@words_api.delete_paragraph_tab_stop_online(delete_request)