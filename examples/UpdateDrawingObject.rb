AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
update_request = UpdateDrawingObjectRequest.new('Sample.docx', request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), 0, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_drawing_object(update_request)