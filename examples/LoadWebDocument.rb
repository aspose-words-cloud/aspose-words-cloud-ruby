AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_data_save_options = SaveOptionsData.new({:FileName => 'google.doc', :SaveFormat => 'doc', :DmlEffectsRenderingMode => '1', :DmlRenderingMode => '1', :UpdateSdtContent => false, :ZipOutput => false})
request_data = LoadWebDocumentData.new({:LoadingDocumentUrl => 'http://google.com', :SaveOptions => request_data_save_options})
load_request = LoadWebDocumentRequest.new(data: request_data)
@words_api.load_web_document(load_request)