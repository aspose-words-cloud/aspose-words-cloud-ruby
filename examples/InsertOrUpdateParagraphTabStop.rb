AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_tab_stop_insert_dto = TabStopInsert.new({:Alignment => 'Left', :Leader => 'None', :Position => 100.0})
insert_request = InsertOrUpdateParagraphTabStopRequest.new(name: 'Sample.docx', index: 0, tab_stop_insert_dto: request_tab_stop_insert_dto)
@words_api.insert_or_update_paragraph_tab_stop(insert_request)