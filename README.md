## lua-htmlgen
### single file library for generating html in lua

```
local page = html {
    head {
        title {
            "Yoben from lua!!!"
        },
        style {
            h1 = {
                "color: #fff;",
                "font-family: Iosevka;",
                "text-align: center;"
            },
            body = {
                "background-color: #1e202a;"
            }
        }
    },
    body {
        h1 {
            "Some fat text"
        },
        button {
            onclick = "alert(1);",
            "Click me!"
        }
    }
}

```
