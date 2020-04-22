//----------------------------------------------------

#include "colors.inc" 
#include "textures.inc"

// ---------------------------------------------------

#declare maximo = 20;
#declare aleat=seed(10);
#declare n=0;

//----------------------------------------------------

//Camara
camera{
 location <0,0,-16>
 look_at<0,0,0>

}
// Lampara
light_source{   <2,8,-4>  color White  } 
// Fondo

  //plano y    
  plane {
    y, -8
   	texture {
   	pigment{    image_map { jpeg "pasto.jpg"}  }
    finish { ambient 0.3 diffuse 0.6 }
    scale <.00001,1000,.01>
    }	
}	    

  //Plano z
  plane {
    z, 10
    pigment{  FBM_Clouds  }
 } 
  plane {
    z, 11
    pigment{  color SlateBlue  }
 }
  
  //Plano 
  plane {
    x, -10
    texture {
	    pigment{
		    color rgb<1,1,1>
	    }
      finish {
        diffuse 0.4
        ambient 0.2
        phong 1
        phong_size 100
        reflection 0.25
      }
    }
  }
 
//----------------------------------------------------

#while(n<maximo)
    sphere{  <-5+(15*rand(aleat)),-7+(10*rand(aleat)),5*rand(aleat)>, .5
             texture{  
                       pigment{ 
                                color rgb<rand(aleat),rand(aleat),rand(aleat),2*rand(aleat)>
                                }
                       finish{  phong 1    }
                       }
            }
#declare n=n+1;
#end 