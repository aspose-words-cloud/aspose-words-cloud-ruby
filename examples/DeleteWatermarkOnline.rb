AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteWatermarkOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
@words_api.delete_watermark_online(delete_request)