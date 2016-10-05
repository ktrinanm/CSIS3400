#include "colors.inc"
#include "shapes.inc"
#include "textures.inc"


 background{color rgb<0.2, 0.2, 0.45>}
 
 camera {
        location <-1, 12.5, -28>
        look_at <0.25, 0.15, 0>
        angle 25
}
        
light_source {
        <-5, 50, -5>
        color rgb <1, 1, 1>
}                          

	object{
		Cube
			scale <5, 0.001, 7>
			texture{
				pigment{checker color Yellow color Blue
					translate <1, 0, 7>
				}
				finish{ diffuse 0.5 ambient 0.2 reflection 0.55 phong 0.5 }
			}
		
	}
	
	sphere {
 	       <-0.25, 2.15, 2>, 2.15
 	       texture{
 	       		pigment {White filter 0.75}
 	       		finish{ diffuse 0.0 ambient 0.2 reflection 0.12 refraction 1.25 ior 1.45 specular 1.0 roughness 0.001}
 	       	}
 	}
 	
 	sphere {
 	       <-0.25, 3, -4.24>, 2.15
 	       texture{
 	       		pigment {White filter 0.75}
 	       		finish{ diffuse 0.0 ambient 0.2 reflection 0.12 refraction 1.25 ior 1.45 specular 1.0 roughness 0.001}
 	       	}
 	}
