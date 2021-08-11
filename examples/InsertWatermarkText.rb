AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
remote_file_name= 'Sample.docx'

request_watermark_text = WatermarkText.new({:Text => 'This is the text', :RotationAngle => 90.0})
insert_request = InsertWatermarkTextRequest.new(remote_file_name, request_watermark_text, nil, nil, nil, nil, remote_file_name, nil, nil)
@words_api.insert_watermark_text(insert_request)