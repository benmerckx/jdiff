import haxe.Json;
import jdiff.JDiff;
import buddy.SingleSuite;

@colorize
class RunTests extends SingleSuite {

	public function new() {
		#if php
		untyped __call__('ini_set', 'xdebug.max_nesting_level', 1000);
		#end
		describe('jdiff', {
			it('should start', {
				trace(Json.stringify(JDiff.diff(
				{"format":"example","content":[{"align":"center","depth":0,"list":false,"content":[{"style":{"underline":1,"bold":2,"size":20,"italic":2,"color":"FFFFFF","fontFamily":"Arial"},"content":"And please, feel free to send us your feedback and comments to "},{"style":{"underline":1,"bold":2,"size":20,"italic":2,"color":"4DC3FF","fontFamily":"Arial"},"content":"hello world"},{"style":{"underline":1,"bold":2,"size":20,"italic":2,"color":"FFFFFF","fontFamily":"Arial"},"content":", or just by clicking on the "},{"style":{"underline":1,"bold":2,"size":20,"italic":2,"color":"4DC3FF","fontFamily":"Arial"},"content":"feedback"}],"ordered":false}],"version":3},
				{"format":"example","version":3.1,"content":[{"list":false,"depth":0,"ordered":false,"content":[{"content":"And please, feel free to send us your feedback and comments to ","style":{"size":20,"color":"FFFFFF","name":"Arial","bold":2,"italic":2,"underline":2}},{"content":"foo","style":{"size":20,"color":"4DC2FF","name":"Arial","bold":2,"italic":2,"underline":2}},{"content":", or just by clicking on the ","style":{"size":20,"color":"FFFFFF","name":"Arial","bold":2,"italic":2,"underline":2}},{"content":"feedback","style":{"size":20,"color":"4DC2FF","name":"Arial","bold":2,"italic":2,"underline":2}},{"content":" button up above.","style":{"size":20,"color":"FFFFFF","name":"Arial","bold":2,"italic":2,"underline":2}}],"align":"center"}]}
				)));
			});
		});
	}
  
}