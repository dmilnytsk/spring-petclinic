node {
  stage ('Build') {
    git url: 'https://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@github.com/dmilnytsk/spring-petclinic'
    withMaven {
      sh "mvn clean install"
    } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
  }
}
