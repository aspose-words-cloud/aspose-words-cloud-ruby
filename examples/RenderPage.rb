AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
render_request = RenderPageRequest.new(name: 'Sample.docx', page_index: 1, format: 'bmp')
@words_api.render_page(render_request)