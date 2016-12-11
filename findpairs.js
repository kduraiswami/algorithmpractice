var pairsWithSum = function(sum,sample_data) {

	var found = {};
	var results = [];
	var i = 0
	foreach( i in sample_data) {
		if (found[100 - sample_data[i]] === true) {
        results.push({
        	a: sample_data[i],
        	b: 100 - sample_data[i]
        });
    }

    found[i] = true;
}
	
}
var test_1 = [1,98,99] 
var test_2 = [95,5,95] 
var test_3 = [95,5,5,95] 

console.log(pairsWithSum(100, test_1)))