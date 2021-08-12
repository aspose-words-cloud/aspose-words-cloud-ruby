AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
delete_request = DeleteCustomXmlPartsRequest.new('Sample.docx', nil, nil, nil, nil, nil, nil, nil)
@words_api.delete_custom_xml_parts(delete_request)