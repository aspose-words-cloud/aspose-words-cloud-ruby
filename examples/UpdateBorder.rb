AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_border_properties_color = XmlColor.new({:Web => '#AABBCC'})
request_border_properties = Border.new({:BorderType => 'Left', :Color => request_border_properties_color, :DistanceFromText => 6.0, :LineStyle => 'DashDotStroker', :LineWidth => 2.0, :Shadow => true})
update_request = UpdateBorderRequest.new(name: 'Sample.docx', border_type: 'left', border_properties: request_border_properties, node_path: 'tables/1/rows/0/cells/0')
@words_api.update_border(update_request)