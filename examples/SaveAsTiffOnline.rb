AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
save_request = SaveAsTiffOnlineRequest.new(File.open(File.join(documents_dir, 'Common/test_multi_pages.docx')), request_save_options, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.save_as_tiff_online(save_request)