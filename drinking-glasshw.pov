
 #include "colors.inc"
 #include "golds.inc"
 #include "woods.inc"
 
 camera {
        location <10, 10, -20>
        look_at <0, 5, 0>
        angle 45 
}

background{color rgb <0.2, 0.4, 0.8>}
        
light_source {
        <5, 50, -5> 
        color rgb <1, 1, 1>*1
} 

plane{
        <0, 1, 0>, 1 //default lies on 0,0,0       
         texture {T_Wood1}
}


sor{
	6
	<2.0, 0.0>,
	<2.0, 1.0>,
	<2.1, 2.6>,
	<2.3, 4.0>,
	<2.5, 8.0>,
	<2.8, 10.0>
	open
	texture { 
                pigment {White filter 0.75}
 	       	finish{ diffuse 0.0 ambient 0.2 reflection 0.2 refraction 1.0 ior 1.45 specular 1.0 roughness 0.001}
        }
}