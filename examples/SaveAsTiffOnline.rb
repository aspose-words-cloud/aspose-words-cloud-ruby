AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Common/test_multi_pages.docx')
request_save_options = TiffSaveOptionsData.new({:SaveFormat => 'tiff', :FileName => '/abc.tiff'})
save_request = SaveAsTiffOnlineRequest.new(document: request_document, save_options: request_save_options)
@words_api.save_as_tiff_online(save_request)