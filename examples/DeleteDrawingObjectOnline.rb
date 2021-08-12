AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 0, nil, nil, nil, nil, nil, nil)
@words_api.delete_drawing_object_online(delete_request)