AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request = GetOfficeMathObjectsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil)
@words_api.get_office_math_objects_online(request)