parameters {
        string(name: 'branch', defaultValue: 'master', description: 'branch to test')		
		string(name: 'testServerUrl', defaultValue: 'https://auckland-words-cloud-staging.dynabic.com', description: 'server url')		
}

def runtests(dockerImageVersion)
{
    dir(dockerImageVersion){
        try {
            stage('checkout'){
                checkout([$class: 'GitSCM', branches: [[name: '*/' + params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '9d6c4dfa-042c-4ed1-81c7-9175179dddda', url: 'https://github.com/aspose-words-cloud/aspose-words-cloud-ruby.git/']]])
                withCredentials([usernamePassword(credentialsId: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', passwordVariable: 'AppKey', usernameVariable: 'AppSid')]) {
					sh 'mkdir -p Settings'
                    sh 'echo "{\\"AppSid\\": \\"$AppSid\\",\\"AppKey\\": \\"$AppKey\\", \\"BaseUrl\\": \\"${testServerUrl}\\"}" > Settings/servercreds.json'
                }
            }
            
            docker.image('ruby:' + dockerImageVersion).inside{
                stage('build'){
                  	sh "mkdir testReports"
					try {
						sh "rubocop ./lib -o testReports/codeStyleErrors.txt || exit 0"
					} finally {
						checkstyle pattern: 'testReports/codeStyleErrors'
					}	
                }
            
                stage('tests'){   
					sh "gem install bundler && bundle install && find ./tests -name "*_tests.rb" -maxdepth 4 -type f -exec ruby -W0 {} \;"
                }
            
                stage('bdd-tests'){
					
                }
            }        
        } finally {                       
            deleteDir()
        }
    }
}

node('billing-qa-ubuntu-16.04.4') {
    runtests("2.7.15")
	runtests("3.6")          
}