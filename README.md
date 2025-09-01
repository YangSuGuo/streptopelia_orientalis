# streptopelia_orientalis

Time is money.
时间是金！

### 替换阿里云镜像

~~~
android/gradle/wrapper/gradle-wrapper.properties
阿里云镜像 https://mirrors.aliyun.com/macports/distfiles/gradle/gradle-xx.xx-all.zip
~~~

### 替换 maven 镜像

~~~ kts
android/build.gradle.kts

allprojects {
    repositories {
        // google()
        // mavenCentral()
        maven { url = uri("https://maven.aliyun.com/repository/google") }
        maven { url = uri("https://maven.aliyun.com/repository/mavenCentral") }
        maven { url = uri("https://maven.aliyun.com/repository/central") }
        maven { url = uri("https://mirrors.huaweicloud.com/repository/maven/") }
    }
}
~~~

### 代码自动生成（自动更新）

~~~
dart run build_runner watch -d
~~~

### 应用图标&名称生成

```
dart run flutter_launcher_icons
dart run rename_app:main all="My App Name"
```

