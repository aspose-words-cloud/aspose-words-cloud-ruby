AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90})
insert_request = InsertWatermarkTextOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), request_watermark_text, nil, nil, nil, nil, nil)
@words_api.insert_watermark_text_online(insert_request)