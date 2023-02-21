fx_version 'bodacious'
games { 'gta5' }

description "flutter web in fivem UI"
author "xnorgate"
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
