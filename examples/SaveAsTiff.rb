AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
save_request = SaveAsTiffRequest.new('Sample.docx', request_save_options, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)
@words_api.save_as_tiff(save_request)