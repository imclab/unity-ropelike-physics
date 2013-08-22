﻿Shader "Custom/Offset Diffuse" {
	Properties {
        _Color ("Main Color (RGB)", Color) = (1, 1, 1, 0)
	}
	SubShader {
		Offset 1, 1
		
		CGPROGRAM
		#pragma surface surf Lambert

        float4 _Color;

		struct Input {
            float dummy;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			o.Albedo = _Color.rgb;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
