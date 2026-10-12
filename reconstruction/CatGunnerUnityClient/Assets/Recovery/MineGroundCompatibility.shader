// Port of vc257 Custom/DiamondClipSprite GLES3 operations/pass state.
// Untiled UV radius .5 discards corners; tiled UV samples _MainTex * _Color.
// The original shader does not multiply the SpriteRenderer's vertex tint.
Shader "Recovery/MineGroundCompatibility"
{
    Properties { [PerRendererData] _MainTex("Original floor texture",2D)="white"{} _Color("Original tint",Color)=(1,1,1,1) }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent" "CanUseSpriteAtlas"="True"}
        Cull Off ZWrite Off ZTest LEqual Blend SrcAlpha OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            sampler2D _MainTex;float4 _MainTex_ST;fixed4 _Color;
            struct Input {float4 position:POSITION;float2 uv:TEXCOORD0;};
            struct Output {float4 position:SV_POSITION;float2 tiled:TEXCOORD0;float2 uv:TEXCOORD1;};
            Output vert(Input input){Output o;o.position=UnityObjectToClipPos(input.position);o.tiled=TRANSFORM_TEX(input.uv,_MainTex);o.uv=input.uv;return o;}
            fixed4 frag(Output input):SV_Target {float2 offset=input.uv-float2(.5,.5);clip(.25-dot(offset,offset));return tex2D(_MainTex,input.tiled)*_Color;}
            ENDCG
        }
    }
}
