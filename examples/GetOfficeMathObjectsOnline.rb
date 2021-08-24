AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request = GetOfficeMathObjectsOnlineRequest.new(document: request_document)
@words_api.get_office_math_objects_online(request)