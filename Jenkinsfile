/ An highlighted block
pipeline {
	//表示此pipeline只在label关键字指定的slave上运行，还有其他关键字 any/docker等。 
	//即使需要针对所有对象生效，也必须要声明 agent any
    agent any
    //options指定此pipeline保留5次最近执行记录，此指令用于针对pipeline的变量设置
    options { buildDiscarder(logRotator(numToKeepStr: '5')) }
    //设置键值对，类似全局变量，用于后续when/if判断
    environment { SKIP_STAGE2='false'}
    //stages是jenkinsfile的主体
    stages {
    	//第一个stage
        //第三个stage
        stage('Stage 3') {
        	//执行shell命令，获取系统的各负载情况
            steps {
                echo 'get slave cpu usage ....'
                sh 'top -bn 1 -i -c'
                echo 'get slave mem usage ....'
                sh 'free -g'
                echo 'get slave io usage ....'
                sh 'iostat'
            }
        }
    }
}

