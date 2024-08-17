#version 150

in vec4 vertexColor;

uniform vec4 ColorModulator;


out vec4 fragColor;

void main() {
    vec4 color = vertexColor;
    if (color.a == 0.0) {
        discard;
    }
//Button
    if (color.r == 56.0/255.0 && color.g == 56.0/255.0 && color.b == 56.0/255.0){
        color = vec4(55.5/255.0, 55.5/255.0, 55.5/255.0, color.a);
    }
    else if (color.r == 54.0/255.0 && color.g == 54.0/255.0 && color.b == 54.0/255.0){
        color = vec4(111.0/255.0, 111.0/255.0, 111.0/255.0, color.a);
    }
    else if (color.r == 80.0/255.0 && color.g == 80.0/255.0 && color.b == 80.0/255.0 && color.a == 1.0){
        color = vec4(94.0/255.0, 94.0/255.0, 94.0/255.0, color.a);
    }
    else if (color.r == 42.0/255.0 && color.g == 42.0/255.0 && color.b == 42.0/255.0){
        color = vec4(82.0/255.0, 82.0/255.0, 82.0/255.0, color.a);
    }

//Highlighted button
    else if (color.r == 89.0/255.0 && color.g == 89.0/255.0 && color.b == 89.0/255.0){
        color = vec4(79.0/255.0, 148.0/255.0, 71.0/255.0, color.a);
    }
    else if (color.r == 85.0/255.0 && color.g == 85.0/255.0 && color.b == 85.0/255.0){
        color = vec4(182.0/255.0, 204.0/255.0, 80.0/255.0, color.a);
    }
    else if (color.r == 66.0/255.0 && color.g == 66.0/255.0 && color.b == 66.0/255.0){
        color = vec4(182.0/255.0, 204.0/255.0, 80.0/255.0, color.a);
    }
    else if (color.r == 127.0/255.0 && color.g == 127.0/255.0 && color.b == 127.0/255.0){
        color = vec4(182.0/255.0, 204.0/255.0, 80.0/255.0, color.a);
    }

//Hover text
    else if (color.r == 35.0/255.0 && color.g == 35.0/255.0 && color.b == 35.0/255.0){
        color = vec4(44.0/255.0, 44.0/255.0, 44.0/255.0, color.a);
    }

//Sodium options
    else if(color == vec4(0.5803921568627451, 0.8941176470588236, 0.8274509803921568, 1)){
       color = vec4(0.161, 0.592, 1.0, color.a);
    }

    fragColor = color * ColorModulator;
}
