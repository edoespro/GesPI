pluginManagement {
     repositories {
         google()
          grad6lePluginPortal() mavenCentral() } }

dependencyResolutionManagement { repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS) repositories { google() mavenCentral() } }

rootProject.name = "GesPI" include(":app")