AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
delete_request = DeleteCustomXmlPartsOnlineRequest.new(File.open(File.join(documents_dir, 'Sample.docx')), nil, nil, nil, nil, nil)
@words_api.delete_custom_xml_parts_online(delete_request)