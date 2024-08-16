#version 150

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;

in vec2 texCoord0;
in vec4 vertexColor;

out vec4 fragColor;

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor;
    if (color.a < 0.1) {
        discard;
    }


    if(vertexColor.rgb == vec3(22.0/255.0, 22.0/255.0, 24.0/255.0)){
        color.rgb = vec3(62.0/255.0,62.0/255.0,62.0/255.0);
    }

    fragColor = color * ColorModulator;
}