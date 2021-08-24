AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
request_image_file = File.open('Common/aspose-cloud.png')
insert_request = InsertDrawingObjectRequest.new(name: 'Sample.docx', drawing_object: request_drawing_object, image_file: request_image_file)
@words_api.insert_drawing_object(insert_request)