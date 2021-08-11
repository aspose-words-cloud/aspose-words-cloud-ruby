AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
documents_dir = '...'
request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
compare_request = CompareDocumentOnlineRequest.new(File.open(File.join(documents_dir, 'compareTestDoc1.doc')), request_compare_data, File.open(File.join(documents_dir, 'compareTestDoc2.doc')), nil, nil, '/TestCompareDocumentOut.doc')
@words_api.compare_document_online(compare_request)