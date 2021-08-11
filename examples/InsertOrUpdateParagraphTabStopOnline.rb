AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 72})
insert_request = InsertOrUpdateParagraphTabStopOnlineRequest.new(File.open(File.join(documents_dir, '/ParagraphTabStops.docx')), request_tab_stop_insert_dto, 0, '', nil, nil, nil)
@words_api.insert_or_update_paragraph_tab_stop_online(insert_request)