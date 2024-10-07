# neovim-wptangtoc
Neovim là một IDE nguồn mở miễn phí, hiệu suất cực nhanh và siêu nhẹ, dành cho pro player

Neovim là một IDE cực mạnh (mạnh mẽ nhất mình từng trải nghiệm) với khả năng tuỳ biến cực khủng, đây là những setting tuỳ biến mà bản thân mình sử dụng trong hơn gần 4 năm qua.<br>

Neovim mặc định nói thẳng ra là rất chán, phải được tuỳ biến lại thì mới ngon được.

Mới đầu làm quen với Neovim 7 ngày đầu tiên đường cong học tập nó khá là cực hình, nhưng dần một thời gian khi bạn đã quen thuộc rồi tốc độ gõ của bạn siêu nhanh nó là thứ rất xứng đáng để bạn luyện tập<br>

Phần mềm này giúp bản thân mình cải thiện năng suất làm việc rất nhiều.

Trên linux thì mình tự tin đây là IDE tốt nhất dành cho linux
<h2>Hướng dẫn cài đặt</h2>
yêu cầu: sử dụng hệ điều hành almalinux > 8 hoặc rocky linux > 8 hoặc ubuntu > 18.04<br>
trên máy chủ, vps hay máy cá nhân dùng linux đều có thể sử dụng được.

sử dụng paste lệnh này vào terminal và làm theo phần mềm hướng dẫn
<pre>curl -sO https://raw.githubusercontent.com/wptangtoc/neovim-wptangtoc/refs/heads/main/neovim-wptangtoc.sh && bash neovim-wptangtoc.sh</pre>

sau khi thực thi lệnh bên trên xong: bạn hãy tiếp tục thực hiện các bước sau
trên terminal bạn hãy gõ lệnh: vim .
Bạn cứ ấn enter đến khi nào có ấn được nút :
rồi sau đó gõ=> :PlugInstall"
rồi tiếp tục gõ=> :CocInstall coc-phpls coc-css coc-html
Để thoát ra gõ=> :q! (ấn khi nào thoát ra thì thôi)
Hy vọng phần mềm này sẽ giúp bạn cải thiện năng suất làm việc

<h2>Hướng dẫn xoá neovim</h2>
<pre>curl -sO https://raw.githubusercontent.com/wptangtoc/neovim-wptangtoc/refs/heads/main/remove-neovim-wptangtoc.sh && bash remove-neovim-wptangtoc.sh</pre>


