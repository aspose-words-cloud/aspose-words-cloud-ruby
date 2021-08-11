AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_comment_range_start_node = NodeLink.new({:NodeId => '0.3.0'})
request_comment_range_start = DocumentPosition.new({:Node => request_comment_range_start_node, :Offset => 0})
request_comment_range_end_node = NodeLink.new({:NodeId => '0.3.0'})
request_comment_range_end = DocumentPosition.new({:Node => request_comment_range_end_node, :Offset => 0})
request_comment = CommentUpdate.new({:RangeStart => request_comment_range_start, :RangeEnd => request_comment_range_end, :Initial => 'IA', :Author => 'Imran Anwar', :Text => 'A new Comment'})
update_request = UpdateCommentRequest.new('Sample.docx', 0, request_comment, nil, nil, nil, nil, nil, nil, nil)
@words_api.update_comment(update_request)