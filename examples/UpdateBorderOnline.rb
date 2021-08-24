AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('Sample.docx')
request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6, :LineStyle => 'DashDotStroker', :LineWidth => 2, :Shadow => true})
update_request = UpdateBorderOnlineRequest.new(document: request_document, border_properties: request_border_properties, border_type: 'left', node_path: 'tables/1/rows/0/cells/0')
@words_api.update_border_online(update_request)