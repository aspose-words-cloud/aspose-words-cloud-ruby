AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_compare_data = CompareData.new({:Author => 'author', :ComparingWithDocument => 'TestCompareDocument2.doc', :DateTime => Date.iso8601('2015-10-26T00:00:00.0000000Z')})
compare_request = CompareDocumentRequest.new(name: 'TestCompareDocument1.doc', compare_data: request_compare_data, dest_file_name: '/TestCompareDocumentOut.doc')
@words_api.compare_document(compare_request)