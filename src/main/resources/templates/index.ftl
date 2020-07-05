<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Websocket</title>
</head>
<body>

</body>
<script type="text/javascript">
    ;(function(){
        const websocket = new WebSocket('ws://localhost:1024/channel');
        websocket.onmessage = e => {
            console.log('收到消息:', e.data);
        }
        websocket.onclose = e => {
            let {code, reason} = e;
            console.log(`链接断开:code=${code}, reason=${reason}`);
        }
        websocket.onopen = () => {
            console.log(`链接建立...`);
            websocket.send('Hello');
        }
        websocket.onerror = e => {
            console.log('链接异常:', e);
        }
    })();

</script>
</html>