sudo apt-get install -y uidmap okular ufw vim wmctrl



Convert pdf:
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH    -sOutputFile=test.pdf devconnect_demo/slides/demo.pdf 

.config/autostart/impressive.desktop:
```
[Desktop Entry]
Type=Application
Exec=impressive --fullscreen --nologo --auto 8 --wrap test.pdf
Name=slides
X-GNOME-Autostart-enabled=true
```

share/okular/docdata/75471.demo.pdf.xml:
```
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE documentInfo>
<documentInfo url="/home/heeckhau/devconnect_demo/slides/demo.pdf">
 <generalInfo>
  <history>
   <oldPage viewport="1"/>
   <oldPage viewport="2"/>
   <oldPage viewport="3"/>
   <oldPage viewport="4"/>
   <oldPage viewport="5"/>
   <oldPage viewport="6"/>
   <oldPage viewport="0"/>
   <oldPage viewport="1"/>
   <oldPage viewport="2"/>
   <oldPage viewport="3"/>
   <current viewport="4"/>
  </history>
  <views>
   <view name="PageView">
    <zoom value="0.512426" mode="1"/>
    <continuous mode="1"/>
    <viewMode mode="0"/>
    <trimMargins value="0"/>
   </view>
  </views>
 </generalInfo>
</documentInfo>
```

cat ~/.config/okularpartrc
```
[Core Presentation]
SlidesAdvance=true
SlidesAdvanceTime=3
SlidesLoop=true

[PageView]
MouseMode=TextSelect

[Messages]
PresentationInfo=false
WelcomeScreen=false

[Reviews]
QuickAnnotationTools=<tool type="highlight" default="true" id="1" name="Yellow Highlighter"><engine type="TextSelector" color="#ffff00"><annotation type="Highlight" color="#ffffff00"/></engine><shortcut>1</shortcut></tool>,<tool type="highlight" default="true" id="2" name="Green Highlighter"><engine type="TextSelector" color="#00ff00"><annotation type="Highlight" color="#ff00ff00"/></engine><shortcut>2</shortcut></tool>,<tool type="underline" id="3"><engine type="TextSelector" color="#ff0000"><annotation type="Underline" color="#ffff0000"/></engine><shortcut>3</shortcut></tool>,<tool type="typewriter" default="true" id="4" name="Insert Text"><engine type="PickPoint" block="true"><annotation type="Typewriter" color="#00ffffff" width="0" textColor="#000000"/></engine><shortcut>4</shortcut></tool>,<tool type="note-inline" id="5"><engine type="PickPoint" color="#ffff00" hoverIcon="tool-note-inline" block="true"><annotation type="FreeText" color="#ffffff00" textColor="#ff000000"/></engine><shortcut>5</shortcut></tool>,<tool type="note-linked" id="6"><engine type="PickPoint" color="#ffff00" hoverIcon="tool-note"><annotation type="Text" color="#ffffff00" icon="Note"/></engine><shortcut>6</shortcut></tool>
```

.config/autostart/console.desktop:
```
[Desktop Entry]
Type=Application
Exec=lxterminal --geometry=120x20+50+50 --command="bash -c 'cd ~/devconnect_demo && docker compose logs -f'"
Name=Logs
```



ontop.desktop
```
[Desktop Entry]
Type=Application
Name=OnTop
Exec=/home/heeckhau/devconnect_demo/devops/startup.sh
```