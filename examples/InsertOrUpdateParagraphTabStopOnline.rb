AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 72})
insert_request = InsertOrUpdateParagraphTabStopOnlineRequest.new(document: request_document, tab_stop_insert_dto: request_tab_stop_insert_dto, index: 0)
@words_api.insert_or_update_paragraph_tab_stop_online(insert_request)