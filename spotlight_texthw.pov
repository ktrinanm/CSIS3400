#include "colors.inc"
#include "golds.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones1.inc"
#include "stones2.inc"
 
camera {
        location <-4, 3, -9>*1.5
        look_at <0, 0, 0>
        angle 48 
}
        
light_source {
        <0, 10, -3> //knows that it's the location
        color rgb <1, 1, 1>
        spotlight
        radius 20
        falloff 25
        point_at <0,0,0>
}                          

sphere {
        <0, 0, 0>, 1 //location, radius
        texture {Starfield  }                                                                                             
        translate <1.5, 0, -2>
}

plane{
        <0, 1, 0>, -1 //default lies on 0,0,0
        texture {
                pigment{ color rgb<0.9, 1.0, 0.9> }
                finish{ diffuse 0.5 ambient 0.2 reflection 0.55 phong 1 }
        }
}

torus {
        1.5, 0.5 //out Radius, inner radius
        texture {  T_Grnt10a }
        rotate <90, 160, 0>
        translate <-1, 1 ,3>
}

box{
        <-1, -1, -1>, <1, 1, 1>
        texture { T_Wood2  }
        translate <2, 0, 2.3>
}

cone{
        <0, 1, 0>, 0, <0, 0, 0>, 1
        texture {Lightning2 }
        scale <1, 1.5, 1>
        translate <-1, -1, -1>
}
        