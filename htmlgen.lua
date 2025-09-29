local DT = "<!DOCTYPE HTML>"



local function conc(t)
    return table.concat(t)
end

local function attr_append(attr, val)
    return " " .. attr .. "=" .. val
end

local function quote_str(str)
    return "\"" .. str .. "\""
end

local function attr_format(t)
    local attrs = {}
    for k, v in pairs(t) do
        if type(k) == "string" then
            local attr = attr_append(k, quote_str(v))
            table.insert(attrs, attr)
        end
    end
    return conc(attrs)
end



local function create_element(tag, attrs, body)
    if #attrs > 0 then
        return "<" .. tag .. attrs .. ">" .. body .. "</" .. tag .. ">"
    else
        return "<" .. tag .. ">" .. body .. "</" .. tag .. ">"
    end
end

--=======================================================--
--============Document tags==============================--
--=======================================================--


function html(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return DT .. create_element("html", attrs, body)
end

function meta(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("meta", attrs, body)
end

function link(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("link", attrs, body)
end

function title(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("title", attrs, body)
end

function head(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("head", attrs, body)
end

function body(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("body", attrs, body)
end

function script(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("script", attrs, body)
end



function style(t)
    local styles = {}
    for k, set in pairs(t) do
        local style = " " .. k .. "{" .. conc(set) .. "}"
        table.insert(styles, style)
    end
    local body = conc(styles)
    return create_element("style", {}, body)
end


--=======================================================--
--============Text tags==================================--
--=======================================================--

function h1(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("h1", attrs, body)
end

function h2(t)
     local attrs = attr_format(t)
     local body = conc(t)
     return create_element("h2", attrs, body)
end

function h3(t)
     local attrs = attr_format(t)
     local body = conc(t)
     return create_element("h3", attrs, body)
end

function h4(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("h3", attrs, body)
end

function h5(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("h5", attrs, body)
end

function h6(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("h6", attrs, body)
end

function p(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("p", attrs, body)
end

function br()
    return "<br>"
end

function hr()
    return "<hr>"
end

function b(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("b", attrs, body)
end

function strong(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("strong", attrs, body)
end

function i(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("i", attrs, body)
end

function em(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("em", attrs, body)
end

function u(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("u", attrs, body)
end

function sub(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("sub", attrs, body)
end

function sup(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("sup", attrs, body)
end

function mark(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("mark", attrs, body)
end

function small(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("small", attrs, body)
end

function del(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("del", attrs, body)
end

function ins(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("ins", attrs, body)
end

function code(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("code", attrs, body)
end

function pre(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("pre", attrs, body)
end

function a(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("a", attrs, body)
end

function img(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("img", attrs, body)
end

--=======================================================--
--============List tags==================================--
--=======================================================--



function ul(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("ul", attrs, body)
end

function li(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("li", attrs, body)
end

function ol(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("ol", attrs, body)
end

function dl(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("dl", attrs, body)
end

function dt(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("dt", attrs, body)
end

function dd(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("dd", attrs, body)
end


--=======================================================--
--============Form tags==================================--
--=======================================================--

function form(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("form", attrs, body)
end

function input(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("input", attrs, body)
end

function textarea(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("textarea", attrs, body)
end

function button(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("button", attrs, body)
end


function select(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("select", attrs, body)
end

function option(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("option", attrs, body)
end

function label(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("label", attrs, body)
end

function fieldset(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("fieldset", attrs, body)
end

function legend(t)
    local attrs = attr_format(t)
    local body = conc(t)
    return create_element("legend", attrs, body)
end
