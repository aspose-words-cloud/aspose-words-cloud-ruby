AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
render_request = RenderParagraphOnlineRequest.new(document: request_document, format: 'png', index: 0)
@words_api.render_paragraph_online(render_request)