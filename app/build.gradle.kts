plugins {
    id("org.jetbrains.kotlin.jvm") version "1.5.0"
    id("com.github.johnrengelman.shadow") version "7.0.0"
    application
}

repositories {
    mavenCentral()
}

tasks{
    build {
        dependsOn("shadowJar")
    }
    shadowJar {
        manifest {
            attributes(Pair("Main-Class", "com.mlesniak.kotlin.AppKt"))
        }
    }
}

dependencies {
    implementation(platform("org.jetbrains.kotlin:kotlin-bom"))
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")

    testImplementation("org.jetbrains.kotlin:kotlin-test")
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit")
}

application {
    mainClass.set("com.mlesniak.kotlin.AppKt")
}
