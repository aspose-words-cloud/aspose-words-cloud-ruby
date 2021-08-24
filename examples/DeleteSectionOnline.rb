AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
delete_request = DeleteSectionOnlineRequest.new(document: request_document, section_index: 0)
@words_api.delete_section_online(delete_request)