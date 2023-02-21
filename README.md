# web_test
 [How-to]Build flutter web UI for FiveM CEF samples
 
This web_test resource can be directly used in fivem
if you r find the Dart src code , [check this] (https://github.com/XNORGATE/fivem_ui)
Preview: 

https://user-images.githubusercontent.com/72063585/220277510-c012bdb7-a27c-4101-952c-7766796e9c3d.mp4




# [How-to]Build flutter web UI for FiveM CEF

*warning :this note is for those who knows some basic stuff for flutter*
1. Before compiling Dart code, Replace the source code HTML with
 ```htmlembedded=
<!DOCTYPE html>
<html>
<head>

  <base href="/html/">

  <meta charset="UTF-8">
  <meta content="IE=Edge" http-equiv="X-UA-Compatible">

  <title>set your projectName</title>
  <link rel="manifest" href="manifest.json">

</head>
<body>

  <script>

    var scriptLoaded = false;
    function loadMainDartJs() {
      if (scriptLoaded) {
        return;
      }
      scriptLoaded = true;
      var scriptTag = document.createElement('script');
      scriptTag.src = 'main.dart.js';
      scriptTag.type = 'application/javascript';
      document.body.append(scriptTag);
    }


      loadMainDartJs();
 
  </script>
</body>
</html>
```

2. Place the bat file in the build/ folder (same path as the build/web folder) [remove_files_for_Fivem.bat (click to download)](https://cdn.discordapp.com/attachments/817454204108144661/1077344351191056574/remove_files_for_Fivem.bat)

3. **Build command: `flutter build web --web-renderer canvaskit --no-source-maps && %cd%/build/remove_files_for_Fivem.bat`**

`(Using canvaskit renderer and not to produce src maps file,eventully, the unnecessary files will be automatically deleted by the bat file.) If using the VS Code terminal,type `cmd` to switch to cmd .`




4. **Configure fxmanifest.lua on the script to be used** 
> Just edit the `client_scripts` part and `server_scripts` part ,the `files` part and `ui_page` are basically fixed

```lua=
fx_version 'bodacious'
games { 'gta5' }

description "flutter UI"

ui_page "html/index.html"

files {
    "html/index.html",
    "html/*.png",
    "html/**/*.png",
    "html/*.js",
    "html/**/*.js",
    "html/*.json",
    "html/**/*.json",
    "html/**/*.wasm",
    "html/**/*.otf",
    "html/**/*.ttf",
}

client_script "client.lua"

```
5. start the resource and enjoyed it


    
