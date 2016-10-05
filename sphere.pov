
#include "colors.inc"
#include "golds.inc"
#include "textures.inc"
#include "woods.inc"
#include "stones1.inc"
#include "stones2.inc"

 background{color rgb<0.2, 0.2, 0.45>}
 
 camera {
        location <0, -8, 4>
        up <0, 1, 0>
        right <-1.33, 0, 0> //right-handed coordinate system  --view ratio  -- get rid of the negative and put in 16/9 to try
        look_at <0, 0, 0>
        angle 60 //viewing angle
        rotate <0, 0, 30> //about x, about y, about z
}
        
light_source {
        <100, 20, 100> //knows that it's the location
        color rgb <1, 1, 1>*1.5
}                          

sphere {
        <0, 0, 0>, 0.75 //location, radius
       /* texture {       //a lot of properties
                pigment{ color rgbt <0, 1, 0, 0.5> }//transparency
                finish { diffuse 0.5 ambient 0.2 reflection 0.3 phong 0.5 } //phong is reflection model
        }*/
        
        //texture{T_Gold_5A}
        
        //texture{Chrome_Metal}
                               
        //texture{T_Wood1}     
        
        //texture{T_Stone1}
        
        texture{T_Stone15}
}

#declare axis = 
cylinder {
        <0, -3, 0>,<0, 3, 0>, 0.05
        texture {       //a lot of properties
                pigment{ color rgb <0.75, 0.75, 0.75> }//transparency
                finish { phong 1 } //phong is reflection model
        }
}

object {
        axis
}

object {
        axis
        rotate <0, 0 , -90>
}

object {
        axis
        rotate <90, 0, 0>
        no_shadow
}

object {
        box { <-2, -2, -0.05>, <2, 2, 0>}
        texture {
                pigment{ color rgbt<0.9, 1.0, 0.9, 0.5> }
                finish{ diffuse 0.5 ambient 0.2 reflection 0.3 phong 0.5 }
        }
}
