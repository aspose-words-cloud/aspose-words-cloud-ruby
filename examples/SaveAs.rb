AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_save_options_data = SaveOptionsData.new({:SaveFormat => 'docx', :FileName => '/TestSaveAsFromPdfToDoc.docx'})
save_request = SaveAsRequest.new(name: 'Sample.docx', save_options_data: request_save_options_data)
@words_api.save_as(save_request)