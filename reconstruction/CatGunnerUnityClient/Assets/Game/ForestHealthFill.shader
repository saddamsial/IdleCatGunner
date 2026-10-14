// Evidence-constrained BIRP compatibility shader, not decompiled original source.
// Original native contract sends fill amount through SpriteRenderer.color.r.
Shader "Game/ForestHealthFill"
{
    Properties
    {
        [PerRendererData] _MainTex("Original sprite",2D)="white"{}
        [HideInInspector] _RendererColor("Renderer color",Color)=(1,1,1,1)
        _FillMinX("Minimum original sprite X",Float)=-0.5
        _FillMaxX("Maximum original sprite X",Float)=0.5
    }
    SubShader
    {
        Tags {"Queue"="Transparent" "RenderType"="Transparent" "CanUseSpriteAtlas"="True" "DisableBatching"="True"}
        Cull Off ZWrite Off Lighting Off
        Blend One OneMinusSrcAlpha
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            fixed4 _RendererColor;
            struct appdata {float4 vertex:POSITION;float2 uv:TEXCOORD0;fixed4 color:COLOR;};
            struct v2f {float4 vertex:SV_POSITION;float2 uv:TEXCOORD0;float x:TEXCOORD1;fixed4 color:COLOR;};
            sampler2D _MainTex;
            float _FillMinX,_FillMaxX;
            v2f vert(appdata v)
            {
                v2f o;o.vertex=UnityObjectToClipPos(v.vertex);o.uv=v.uv;
                o.x=(v.vertex.x-_FillMinX)/max(_FillMaxX-_FillMinX,0.00001);o.color=v.color*_RendererColor;
                return o;
            }
            fixed4 frag(v2f i):SV_Target
            {
                clip(i.color.r-i.x);
                fixed4 c=tex2D(_MainTex,i.uv);c.a*=i.color.a;c.rgb*=c.a;
                return c;
            }
            ENDCG
        }
    }
}
