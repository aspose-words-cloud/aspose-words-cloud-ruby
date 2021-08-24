AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
render_request = RenderPageOnlineRequest.new(document: request_document, page_index: 1, format: 'bmp')
@words_api.render_page_online(render_request)