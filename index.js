
var http = require('http');
var growl = require('growl');
var qs = require('querystring');

//growl('Started...');

http.createServer(function(req, res){
	//growl("Connection");
	var body = '';
	req.on('data', function(data){
		body += data;
	});

	req.on('end',function(){
		//console.log('body: ' + body);
		var d = qs.parse(body);
		res.end();
		growl(d.msg,{title:d.nick});
	});
	//console.log(req);
	//res.end();
}).listen(19999);
