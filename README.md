#SRS-Dockerfile
<p>SRS是一个免费的视频推流服务</p>
<p>具体的请看 https://github.com/ossrs/srs/wiki/v3_CN_Home </p>
<p>本项目是通过dockerfile将此服务生成镜像，可以进行rtmp视频直播推流</p>
<p>本人对推流了解有限，只是模仿直播网站，测试了obs直播的推流，实测可行</p>
<p>使用方法<p/>
<p>docker build -t srs .</p>
<p>docker run -d -p 1935:1935 srs</p>
<p>开启推流</p>
<p>obs中：设定->广播设定:FMS URL:填 rtmp://docker宿主机器(host)的ip/live  播放路径/串码流:填 livestream</p>
<p>obs点击 开始串流</p>
<p>观看直播</p>
<p>http://winlinvip.github.io/srs.release/trunk/research/players/srs_player.html?vhost=__defaultVhost__&autostart=true&server=你的docker宿主机ip0&app=live&stream=livestream&port=1935</p>
<p>以上是一个在线观看的地址</p>
<p>也可以下载VCL播放器观看 http://winlinvip.github.io/srs.release/trunk/research/players/vlc.html?vhost=__defaultVhost__&autostart=true&server=192.168.1.170&app=live&stream=livestream&port=1935</p>
<p>个人对linux了解很浅，nohup.sh中为了不让srs服务启动完就自动关闭容器，我只能加了个无限ping，让容器保持运行。。。有没有别的解决办法，请看到的大神赐教！</p>