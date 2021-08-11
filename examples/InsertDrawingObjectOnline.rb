AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_drawing_object = DrawingObjectInsert.new({:Height => 0, :Left => 0, :Top => 0, :Width => 0, :RelativeHorizontalPosition => 'Margin', :RelativeVerticalPosition => 'Margin', :WrapType => 'Inline'})
insert_request = InsertDrawingObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_drawing_object, File.open(File.join(documents_dir, 'Common/aspose-cloud.png')), '', nil, nil, nil, nil, nil)
@words_api.insert_drawing_object_online(insert_request)