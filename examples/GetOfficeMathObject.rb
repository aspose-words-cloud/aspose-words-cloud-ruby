AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetOfficeMathObjectRequest.new(name: 'Sample.docx', index: 0)
@words_api.get_office_math_object(request)