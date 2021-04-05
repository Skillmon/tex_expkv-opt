-- Build script for expkv-opt
module     = "expkv-opt"
pkgversion = "0.2"
pkgdate    = "2021-04-04"

-- update package date and version
tagfiles = {"expkv-opt.dtx", "README.md", "CTAN.md"}
function update_tag(file, content, tagname, tagdate)
  if tagname == nil then
    tagname = pkgversion
    tagdate = pkgdate
  end
  if string.match(file, "%.md") then
    return string.gsub(content,
      "%d%d%d%d%-%d%d%-%d%d v%d%.%d%w?",
      tagdate .. " v" .. tagname)
  elseif file == "expkv-opt.dtx" then
    content = string.gsub(content,
      "\\newcommand%*\\ekvoDate{%d%d%d%d%-%d%d%-%d%d}",
      "\\newcommand*\\ekvoDate{" .. tagdate .. "}")
    return string.gsub(content,
      "\\newcommand%*\\ekvoVersion{%d%.%d%w?}",
      "\\newcommand*\\ekvoVersion{" .. tagname .. "}")
  end
  return content
end

-- test with pdfTeX and the LaTeX format
checkengines = {"pdftex"}
checkformat  = "latex-dev"

-- from which files to build
sourcefiles = {"expkv-opt.dtx","expkv-opt-2020-10-10.dtx"}
unpackfiles = sourcefiles

-- which files to put in the tds
installfiles = {"expkv-opt.sty","expkv-opt-2020-10-10.sty"}
textfiles    = {"README.md", "CTAN.md"}
docfiles     = {"expkv-opt.pdf"}

-- how the documentation is build
typesetexe   = "pdflatex-dev"
typesetfiles = {"expkv-opt.dtx"}
typesetruns  = 4

-- CTAN upload
ctanreadme    = "CTAN.md"
uploadconfig  = {
  pkg         = module,
  author      = "Jonathan P. Spratte",
  version     = pkgversion .. " " .. pkgdate,
  license     = "lppl1.3c",
  summary     = "Parse class and package options with expkv",
  topic       = "keyval",
  ctanPath    = "/macros/latex/expkv-opt",
  repository  = "https://github.com/Skillmon/tex_expkv-opt",
  bugtracker  = "https://github.com/Skillmon/tex_expkv-opt/issues",
  update      = true,
  description = [[
`expkv-opt` provides macros to parse class and package options with expkv.
It provides the macros

* `\ekvoProcessLocalOptions{<set>}`

* `\ekvoProcessGlobalOptions{<set>}`

* `\ekvoProcessUnusedGlobalOptions{<set>}`

* `\ekvoProcessOptionsList<list>{<set>}`
  ]]
}
