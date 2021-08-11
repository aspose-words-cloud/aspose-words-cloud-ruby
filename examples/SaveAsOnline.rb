AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_save_options_data = SaveOptionsData.new({:SaveFormat => 'pdf', :FileName => '/TestSaveAs.pdf'})
save_request = SaveAsOnlineRequest.new(File.open(File.join(documents_dir, 'Common/test_multi_pages.docx')), request_save_options_data, nil, nil, nil)
@words_api.save_as_online(save_request)