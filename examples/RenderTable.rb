AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
render_request = RenderTableRequest.new('Sample.docx', 'png', 0, nil, nil, nil, nil, nil, nil, nil)
@words_api.render_table(render_request)