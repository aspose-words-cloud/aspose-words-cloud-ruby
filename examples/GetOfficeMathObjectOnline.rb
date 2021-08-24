AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetOfficeMathObjectOnlineRequest.new(document: request_document, index: 0)
@words_api.get_office_math_object_online(request)