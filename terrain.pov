
#include "colors.inc"
#include "stones.inc"
#include "skies.inc"

camera {
        location <-2, 20, -20>
        look_at <0, 0, 0>
        angle 30
}

light_source {
        <1000, 1000, 1000>
        color rgb<1, 1, 1> * 1.5
}  

light_source {
        <1000, 1000, 1000>
        color rgb<1, 1, 1> * 1.5
}        

height_field {
        ppm "midpoint3.ppm"
        smooth
        
        texture {T_Stone29}
        
        translate <-0.5, -0.5, -0.5>
        //scale <10, 6, 10>
        scale <20, 3, 10>
        
}        
                    
sky_sphere {
        S_Cloud5
        rotate <-10, 40, 0>
}                                                                                            