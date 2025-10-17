* https://marpit.marp.app/
* https://chris-ayers.com/2023/03/31/customizing-marp

install:
`brew install marp-cli`
`nix-shell -p marp-cli`

```
marp sdk.md --preview
```

```
marp slides.md --bespoke.progress --bespoke.transition
```

chromium --app=file:///home/pi/slides.html --kiosk