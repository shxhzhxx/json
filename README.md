# json
c++ json coder



demo:


	#include "json.h"
	#include <stdio.h>


	int main(int argc, char *argv[]) {
	try{
		jsonObject json ("{\"a\":11.5,\"a\":\"17293.5\",\"b\":\"dfda\",\"c\":[-0.5,3,\"ttt\",{\"t1\":\"uuuuu\"}],\"d\":{\"d1\":\"bbbb\"}}");
		json.put("sh", "shxhzhxx");
		json.put("obj", (new jsonObject())->put("pdd", 22)->put("pdd", "saozhu")->put("55k", "uu"));
		json.put("arr", (new jsonArray())->put(true)->put("dd")->put("17293"));
		json.put("bol", false);
		json.put("n", -173.16);
		json.put("n", "uu");
		json.getJsonObject("d")->put("d2", 23333);

		printf("%d\n", json.getJsonArray("arr")->getInt(2));
		printf("%s\n", json.getString("b"));
		printf("%s\n", json.getString("sh"));
		printf("%f\n", json.getDouble("a"));
		printf("%d\n", json.getInt("a"));
		printf("%s\n", json.getJsonObject("d")->getString("d1"));
		printf("%s\n", json.getJsonArray("c")->getString(2));
		printf("%d\n", json.getJsonArray("c")->getInt(0));
		printf("%s\n", json.getJsonArray("c")->getJsonObject(3)->getString("t1"));

		printf("%s\n", json.toString());

		//error: there is no jsonArray value with a key named "a"
		json.getJsonArray("a");
	}catch(std::runtime_error err){
		printf("error:%s\n",err.what());
	}
	}