AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
render_request = RenderMathObjectOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), 'png', 0, nil, nil, nil, nil, nil)
@words_api.render_math_object_online(render_request)