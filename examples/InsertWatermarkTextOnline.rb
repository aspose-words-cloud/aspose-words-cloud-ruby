AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})
insert_request = InsertWatermarkTextOnlineRequest.new(document: request_document, watermark_text: request_watermark_text)
@words_api.insert_watermark_text_online(insert_request)