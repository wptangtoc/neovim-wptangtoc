# neovim-wptangtoc
Neovim là một IDE nguồn mở miễn phí, hiệu suất cực nhanh và siêu nhẹ, dành cho pro player

Neovim là một IDE cực mạnh (mạnh mẽ nhất mình từng trải nghiệm) với khả năng tuỳ biến cực khủng, đây là những setting tuỳ biến mà bản thân mình sử dụng trong hơn gần 4 năm qua.<br>

Neovim mặc định nói thẳng ra là rất chán, phải được tuỳ biến lại thì mới ngon được.

Mới đầu làm quen với Neovim 7 ngày đầu tiên đường cong học tập nó khá là cực hình, nhưng dần một thời gian khi bạn đã quen thuộc rồi tốc độ gõ của bạn siêu nhanh nó là thứ rất xứng đáng để bạn luyện tập<br>

Phần mềm này giúp bản thân mình cải thiện năng suất làm việc rất nhiều.

Trên linux thì mình tự tin đây là IDE tốt nhất dành cho linux

lưu ý: lời khuyên của mình, hãy chạy trên vps khoẻ khoẻ chứ VPS mà 1GB ram đã chạy webserver rồi mà còn cài thêm cái neovim này thì có vẻ hơi khoai
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

nếu như bạn không còn nhu cầu sử dụng neovim nữa có thể sử dụng lệnh này để xoá để cho nhẹ con VPS,Server của bạn:

<pre>curl -sO https://raw.githubusercontent.com/wptangtoc/neovim-wptangtoc/refs/heads/main/remove-neovim-wptangtoc.sh && bash remove-neovim-wptangtoc.sh</pre>

<h2>Hướng dẫn sử dụng cơ bản</h2>
một số lệnh hướng dẫn sử dụng cơ bản:
để hướng dẫn cái này thực sự rất nhiều mình sẽ cố gắng liệt kệ để anh em sử dụng.

Phần mềm này hoạt động trên terminal, bạn có thể sử dụng ssh hoặc chính termianl trên máy tính cá nhân của bạn...

Lúc đầu khi mới bắt đầu học neovim thì có vẻ rất là oải, bạn phải học thuộc quen với các phím tắt, nhưng khi thành thạo được nó rồi thì hiệu suất đem lại cực kỳ tuyệt vời
như bạn biết tốc độ sử dụng máy tính thì sử dụng bàn phím luôn luôn nhanh hơn là sử dụng chuột, dùng neovim thì quên đi máy tính của bạn có chuột hay touch pad nhé

Neovim có 4 chế độ:
1: normal
2: insert
3: command
4: v-line

đầu tiên muốn bắt đầu sử dụng neovim:
vim . là mở neovim bằng thư mục anh em đang đứng (anh em đang cd thư mục đó)
vim index.php là mở file index.php bằng Neovim

====================================
bài 1: chế độ normal (hiểu đơn giản là trung gian của chuyển các chế độ)
esc là chuyển chế độ về chế độ normal
:q là thoát (hoặc ấn nút ctrl + q)
:w là lưu lại (hoặc ấn nút ctrl + s)
:bd là đóng tabs của số đang dùng (hoặc ấn nút ctrl + w)
f5 là là chế độ sidebar thư mục (phải đang ở chế độ normal)
f6 là là chế độ history các file vừa đang xử lý (phải đang ở chế độ normal)
f7 là là chế độ tìm kiếm nội dung trong các file (phải đang ở chế độ normal)
f2 là chế độ terminal mini (phải đang ở chế độ normal)
f3 là mở thêm terminal mini (phải đang ở chế độ terminal mini)
atl + sang phải là next terminal mini (phải đang ở chế độ terminal mini và có 2 terminal mini trở lên)
atl + sang trái là quay về terminal mini (phải đang ở chế độ terminal mini và có 2 terminal mini trở lên)
h là di chuyển sang trái (phải đang ở chế độ normal)
j là di chuyển xuống dưới (phải đang ở chế độ normal)
k là di chuyển lên trên (phải đang ở chế độ normal)
l là di chuyển sang phải (phải đang ở chế độ normal)
f là nhảy bước ký tự bạn muốn (phải đang ở chế độ normal)
u là quay trở lại ví dụ bạn làm cái gì đó muốn quay ấn nút này (phải đang ở chế độ normal)
số nào đó + g là bay vào số dòng đó, ví dụ: bạn gõ 2 + g thì nó sẽ di con chuột vào dòng thứ 2
G là bay xuống cuối văn bản file

bài 2: chế độ insert (để bạn có thể sửa văn bản như kiểu word đó)
i là chuyển chế độ về chế độ insert (nhảy về trước 1 chữ)
I là chuyển chế độ về chế độ insert (nhảy về đầu hàng)
a là chuyển chế độ về insert (nhảy về sau 1 chữ)
A là chuyển chế độ về insert (nhảy về cuối hàng )
O là chuyển chế độ về intert (tự tạo thêm 1 dòng ở bên trên)
o là chuyển chế độ về intert (tự tạo thêm 1 dòng ở bên dưới )

ctrl + v để paste, văn bản từ ở bên ngoài không phải từ neovim

bài 3: chế độ v-line
v là chuyển chế độ v-line (chỉ một chữ bạn đang đứng)
V là chuyển chế độ v-line (nguyên cả dòng)
chế độ v-line bạn có thể di chuyển tô màu bằng các phím điều hướng 
h là di chuyển sang trái (phải đang ở chế độ v-line)
j là di chuyển xuống dưới (phải đang ở chế độ v-line)
k là di chuyển lên trên (phải đang ở chế độ v-line)
l là di chuyển sang phải (phải đang ở chế độ v-line)
y (hoặc ctrl + c) là copy chỗ v-line bạn đã tô màu
p là paste (cho vào ở phía sau)
P là paste (cho vào ở phía trước)
d hoặc x là delete xoá chỗ đang được tô v-line
c là changer xoá chỗ đang được tô v-line nhưng chuyển ngay về chế độ insert luôn

bài 4: chế độ command
bắt đầu bạn ấn nút gõ :
q là thoát
w là ghi vào
bd là đóng táp cửa số
PlugInstall là bạn cài ứng dụng neovim
%s/abc/abcd/g là truy vấn thay thế dữ liệu, ví dụ bạn có ký tự abc nó sẽ thay cho bạn là toàn bộ là abcd toàn bộ file văn bản
nâng cao hơn bạn v-line tô màu: %/abc/abcd/g là truy vấn thay thế dữ liệu, ví dụ bạn có ký tự abc nó sẽ thay cho bạn là toàn bộ là abcd những chỗ bạn tô v-line
nâng cao hơn bạn v-line tô màu: norm A abc là tự động chèn ký tự abc vào các dòng ở cuối hàng bạn tô v-line
nâng cao hơn bạn v-line tô màu: norm I abc là tự động chèn ký tự abc vào các dòng ở đầu dòng bạn tô v-line

nút / là tìm kiếm ký tự trong văn bản lệnh này hơi đặc biệt bạn không cần ấn nút : để chuyển sang chỉ ấn mỗi / (khi bạn xác định ký tự rồi có thể ấn nút n để next nếu văn bản có nhiều ký tự trung nhau, và ngược lại ấn nút shift + n để quay ngược di chuyển ký tự)


đây là một số phím tắt mà thường xuyên cá nhân mình sử dụng hàng ngày.

License: GPLv2
Đây là phần mềm miễn phí cống hiến cho cộng đồng đặc biệt dành cho cộng đồng Việt Nam; bạn có thể phân phối lại và hoặc sửa đổi nó theo các điều khoản của Giấy phép Công cộng GNU GPLv2 theo tiêu chuẩn quốc tế.

Phần mềm này bạn được phép phân phối sửa đổi với hy vọng rằng nó sẽ hữu ích hơn cho cộng đồng.
