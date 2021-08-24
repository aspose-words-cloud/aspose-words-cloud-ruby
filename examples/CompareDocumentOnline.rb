AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_document = File.open('compareTestDoc1.doc')
request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
request_comparing_document = File.open('compareTestDoc2.doc')
compare_request = CompareDocumentOnlineRequest.new(document: request_document, compare_data: request_compare_data, comparing_document: request_comparing_document, dest_file_name: '/TestCompareDocumentOut.doc')
@words_api.compare_document_online(compare_request)