AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteParagraphTabStopOnlineRequest.new(document: request_document, position: 72.0, index: 0)
@words_api.delete_paragraph_tab_stop_online(delete_request)