"-----------------------------------------------------------------------------------------------
"                  vim-chatgpt
"                  vim和chatgpt的交互式配置
"-----------------------------------------------------------------------------------------------

" 访问外网需要代理
" export OPENAI_PROXY="http://localhost:1087"
" 设置API_KEY
let g:openai_api_key=''

let g:chat_gpt_max_tokens=16384
let g:chat_gpt_model='gpt-4o'
" let g:chat_gpt_session_mode=0
let g:chat_gpt_temperature = 0.7
let g:chat_gpt_lang = 'Chinese'
let g:chat_gpt_split_direction = 'vertical'
let g:split_ratio=3

"-----------------------------------------------------------------------------------------------
"                  vim-ai
"                  vim和chatgpt的交互式配置(比上面的更新维护更好点)
"-----------------------------------------------------------------------------------------------
" TODO 需要更多的配置才能更好的使用
" 需要将API KEY放到下面的目录
let g:vim_ai_token_file_path = '~/.config/openai.token'
let g:vim_ai_chat = {
\  "options": {
\    "model": "gpt-4o",
\    "stream": 0,
\    "temperature": 1,
\    "max_completion_tokens": 16384,
\    "initial_prompt": "",
\  },
\}


"-----------------------------------------------------------------------------------------------
"                  claude.vim
"                  vim和claude的交互插件
"-----------------------------------------------------------------------------------------------
" TODO 需要配置
let g:claude_map_implement = "<Leader>ti"
let g:claude_map_open_chat = "<Leadecu>tc"
let g:claude_map_send_chat_message = "<C-]>"
let g:claude_map_cancel_response = "<Leader>tx"


