AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
update_request = UpdateFieldsOnlineRequest.new(document: request_document)
@words_api.update_fields_online(update_request)