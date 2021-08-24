AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_drawing_object = DrawingObjectUpdate.new({:Left => 0})
request_image_file = File.open('Common/aspose-cloud.png')
update_request = UpdateDrawingObjectOnlineRequest.new(document: request_document, drawing_object: request_drawing_object, image_file: request_image_file, index: 0)
@words_api.update_drawing_object_online(update_request)