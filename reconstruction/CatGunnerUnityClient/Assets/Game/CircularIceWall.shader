Shader "Game/CircularIceWall"
{
    Properties { _MainTex("Original glacier wall",2D)="white"{} }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent"}
        Cull Off ZWrite Off ZTest LEqual Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;
            struct Input {float4 position:POSITION;float2 uv:TEXCOORD0;};
            struct Output {float4 position:SV_POSITION;float2 uv:TEXCOORD0;};
            Output vert(Input i){Output o;o.position=UnityObjectToClipPos(i.position);o.uv=i.uv;return o;}
            fixed4 frag(Output i):SV_Target
            {
                // Follow the original isometric cliff's diagonal snow line
                // while placing that same artwork on a circular vertical wall.
                float u=frac(i.uv.x),v=.025+.60*u+.34*saturate(i.uv.y);
                return tex2D(_MainTex,float2(u,v));
            }
            ENDCG
        }
    }
}
