# Flutter template inspired by [this repo](https://github.com/AndrewPiterov/flutter_starter_app)


## Instruction
1) Create file config/app-config.json
2) Add variables in this file for exmpample: 
```json
{
    "environment": "dev"
}
```

## Firebase configuration
 If you need init Firebase in your project you need to do this instructions for two platforms:
### Android
Go to *android/build.gradle*. In *buildscript* section uncomment this line:
```gradle
...
  dependencies {
        classpath 'com.android.tools.build:gradle:4.1.0'
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
       
        // classpath 'com.google.gms:google-services:4.3.3'  // Uncomment if u need firebase
    }
...
```
Than go to *android/app/build.gradle*. Uncomment this line:
```gradle
...
    // apply plugin: 'com.google.gms.google-services' // Uncomment if u need firebase
...
```

##### For multiple android Firebase projects
Than go to *android/app/build.gradle*. Find *productFlavors* section and uncomment this line:
```gradle
...
dev {
        dimension "release-type"
          
        // applicationIdSuffix ".dev"  // Uncomment this line if you need different suffixes
        resValue "string", "app_name", "Template(Dev)"
        versionNameSuffix ".dev"
    }
...
```
You can set this property for all your flavors.

#### Note!
**Firebase *package_name* must be the same with your app name. If you set for your dev flavor suffix *.dev* your *package_name* in Firebase should looks like this: *ru.perpointt.flutterTemplate.dev*.**

### Android sign-in release config
Go to *android/app* and create file *key.properties*. Than you should genetrate jks key by this command *keytool -genkey -v -keystore ~/key.jks -keyalg RSA -keysize 2048 -validity 10000 -alias key*. Than paste this lines in *key.properties*:
```properties
storePassword=store_password_that_you_created
keyPassword=key_password_that_you_created
keyAlias=key
storeFile=file_where_key_stored
```

## IOS
##### For multiple android Firebase projects
In ios Firebase init already for two projects(Dev and Prod). You just need to place *GoogleService-Info.plist* in two folders. 
Go to *ios/config*. Place your Dev config for Firebase in folder *dev*. And place Prod config in folder *prod*.

> If you need only one Firebase project. You should do next steps:
1) Open project in XCode go to Runner, choose target Runner and go to Build Phases.
2) Find phase called "Copy GoogleServices-Info.plist to correct location for schema". Comment all script in this phase.
3) Paste your  *GoogleService-Info.plist* file whia XCode.
4) Enjoy!

##### If you don't need suffix identifier for your product bundle name
1) Go to Runner, choose target Runner and go to Build Phases.
2) Find section Product Bundle Identifier
3) Write your own name for all schemes
4) Enjoy!

# App Icons
You can set different icons for your flavors
TODO ;(

# CI/CD for Codemagic
TODO ;(
