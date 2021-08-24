AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
render_request = RenderDrawingObjectOnlineRequest.new(document: request_document, format: 'png', index: 0, node_path: 'sections/0')
@words_api.render_drawing_object_online(render_request)