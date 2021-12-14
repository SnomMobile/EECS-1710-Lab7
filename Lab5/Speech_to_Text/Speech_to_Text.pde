
/*
  Simple WebSocketServer example that can receive voice transcripts from Chrome
  Requires WebSockets Library: https://github.com/alexandrainst/processing_websockets
 */

import websockets.*;

WebsocketServer socket;

void setup() {
  socket = new WebsocketServer(this, 1337, "/p5websocket");
  println("Cake... or death?");
}

void draw() {
  background(0);
}

void webSocketServerEvent(String msg){
  println(msg);
 if((match(msg,"cake")!=null))
 {
   println("*sigh* Alright... cake it is.");
 }
 if((match(msg,"death")!=null))
 {
   println("Wait really? Nobody picks death! Finally!");
 }
}


// https://codepen.io/getflourish/pen/NpBGqe?editors=1111 open in chrome and allow mic access.
// https://florianschulz.info/stt/ <-- basically an entire tutorial about getting this to work 
// https://github.com/alexandrainst/processing_websockets <--- library I used for websockets

// cake or death, a funny sketch if youve got the time to watch it https://www.youtube.com/watch?v=BNjcuZ-LiSY
