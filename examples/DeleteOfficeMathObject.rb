AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteOfficeMathObjectRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_office_math_object(delete_request)