AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
render_request = RenderPageOnlineRequest.new(File.open(File.join(documents_dir, 'DocumentElements/Text/SampleWordDocument.docx')), 1, 'bmp', nil, nil, nil)
@words_api.render_page_online(render_request)