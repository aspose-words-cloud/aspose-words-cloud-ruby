AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_template = File.open('Sample.docx')
request = GetDocumentFieldNamesOnlineRequest.new(template: request_template, use_non_merge_fields: true)
@words_api.get_document_field_names_online(request)