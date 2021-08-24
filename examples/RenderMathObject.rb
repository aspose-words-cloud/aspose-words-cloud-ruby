AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
render_request = RenderMathObjectRequest.new(name: 'Sample.docx', format: 'png', index: 0)
@words_api.render_math_object(render_request)