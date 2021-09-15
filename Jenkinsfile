node {
    
   echo 'Hello World'
   git 'https://github.com/vveereshvsh/JavaProj.git'
   
   stage ('Java Build') {
    // build .war package
    sh '''export MAVEN_HOME=/opt/maven
          export PATH=$PATH:$MAVEN_HOME/bin
          mvn clean package'''

  }
   
   stage ('Docker Build') {
    // prepare docker build context
   // sh "cp target/project.war ./tmp-docker-build-context"

    // Build and push image with Jenkins' docker-plugin
    withDockerServer([uri: "unix:///var/run/docker.sock"]) {
      withDockerRegistry([credentialsId: '088bec13-2ebb-4030-8636-0129e4bcadca', url: "https://index.docker.io/v1/"]) {
        // we give the image the same version as the .war package
        def image = docker.build("vveereshvsh/testrepos_java")
        //def image = docker.build("<myDockerRegistry>/<myDockerProjectRepo>:${branchVersion}", "--build-arg PACKAGE_VERSION=${branchVersion} ./tmp-docker-build-context")
        image.push()
      }
    }
   }
}
