AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
render_request = RenderPageRequest.new('Sample.docx', 1, 'bmp', nil, nil, nil, nil, nil)
@words_api.render_page(render_request)