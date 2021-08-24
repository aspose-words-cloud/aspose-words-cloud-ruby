AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteWatermarkRequest.new(name: 'Sample.docx')
@words_api.delete_watermark(delete_request)