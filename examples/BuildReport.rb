AsposeWordsCloud.configure do |config|
  config.client_data['ClientId'] = '####-####-####-####-####'
  config.client_data['ClientSecret'] = '##################'
end
@words_api = WordsAPI.new
request_report_engine_settings_report_build_options = ['AllowMissingMembers', 'RemoveEmptyParagraphs']
request_report_engine_settings = ReportEngineSettings.new({:DataSourceType => 'Json', :ReportBuildOptions => request_report_engine_settings_report_build_options})
build_report_request = BuildReportRequest.new('Sample.docx', 'Data.json', request_report_engine_settings, nil, nil, nil, nil, nil)
@words_api.build_report(build_report_request)