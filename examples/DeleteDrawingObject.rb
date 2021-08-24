AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteDrawingObjectRequest.new(name: 'Sample.docx', index: 0)
@words_api.delete_drawing_object(delete_request)