﻿//Makin stuff look good
//https://www.youtube.com/watch?v=T-HXmQAMhG0
Shader "Custom/BasicShader2"
{
    SubShader
    {
        Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_Position;	
				float2 uv : TEXCOORD0;
			};

			v2f vert(appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			float4 frag(v2f i) : SV_Target
			{
			float4 color = float4(i.uv.r,i.uv.g,1,1);
				return color;
			}
			ENDCG
		}
    }
}
