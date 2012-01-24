
var http = require('http');
var growl = require('growl');
var qs = require('qs');

http.createServer(function(req, res){
	var body = '';
	req.on('data', function(data){
		body += data;
	});

	req.on('end',function(){
		res.end();
		var d = qs.parse(body);
		growl(d.msg,{title:d.nick});
	});

}).listen(19999);
