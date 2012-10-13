include <../modules.scad>

difference() {
 cube(size = [100,16,3]);
    union() {
     for(i = [1:10]) {
            translate([(i * i + i)/2 + 3 * i , 8,0])
                polyhole(h = 5, d = i);
     }
    }
}

union(){
	for(i=[1:10]){
		translate([(i*2.5*i+i)/4 +i, 30, 0])
			cylinder(3,i/2,i/2);
	}
}
