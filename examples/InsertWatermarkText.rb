AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90.0})
insert_request = InsertWatermarkTextRequest.new(name: 'Sample.docx', watermark_text: request_watermark_text)
@words_api.insert_watermark_text(insert_request)