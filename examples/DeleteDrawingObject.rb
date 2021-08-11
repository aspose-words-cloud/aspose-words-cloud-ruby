AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteDrawingObjectRequest.new('Sample.docx', 0, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_drawing_object(delete_request)