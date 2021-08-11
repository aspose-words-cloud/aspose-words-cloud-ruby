AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request = GetRunFontRequest.new('Sample.docx', 'paragraphs/0', 0, nil, nil, nil, nil)
@words_api.get_run_font(request)