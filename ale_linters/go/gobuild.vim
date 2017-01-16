" Author: dzhou121 <dzhou121@gmail.com>
" Description: go build for Go files

let g:ale#util#gobuild_script =
\   get(g:, 'ale_go_gobuild_script', 'go build -o /dev/null')

call ale#linter#Define('go', {
\   'name': 'go build',
\   'output_stream': 'stderr',
\   'executable': 'go',
\   'command': g:ale#util#gobuild_script,
\   'callback': 'ale#handlers#HandleUnixFormatAsError',
\})
