Shader "Recovery/CircularSnow"
{
    Properties
    {
        [MainTexture] _SnowTex("snow-ground.png",2D)="white"{}
        _Tint("Snow tint",Color)=(1,1,1,1)
        _WhiteMix("Fresh snow",Range(0,1))=.35
        _Desaturate("Grey floor",Range(0,1))=0
        _TileSize("Texture size in world units",Float)=24
        _Center("Circle center",Vector)=(-100,0,0,0)
        _Radius("Snow radius",Float)=100
    }
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
            sampler2D _SnowTex;fixed4 _Tint;float4 _Center;float _Radius,_WhiteMix,_Desaturate,_TileSize;
            struct Input {float4 position:POSITION;};
            struct Output {float4 position:SV_POSITION;float3 world:TEXCOORD0;};
            Output vert(Input i){Output o;o.position=UnityObjectToClipPos(i.position);o.world=mul(unity_ObjectToWorld,i.position).xyz;return o;}
            float hash(float2 p){return frac(sin(dot(p,float2(127.1,311.7)))*43758.5453);}
            float noise(float2 p)
            {
                float2 cell=floor(p),t=frac(p);t=t*t*(3-2*t);
                return lerp(lerp(hash(cell),hash(cell+float2(1,0)),t.x),lerp(hash(cell+float2(0,1)),hash(cell+1),t.x),t.y);
            }
            fixed4 frag(Output i):SV_Target
            {
                float2 p=i.world.xz-_Center.xz;clip(_Radius*_Radius-dot(p,p));
                float3 snow=tex2D(_SnowTex,frac(p/max(1,_TileSize)+.5)).rgb;
                float grey=dot(snow,float3(.2126,.7152,.0722));snow=lerp(snow,grey.xxx,_Desaturate);
                snow=lerp(snow,float3(.98,.99,1),_WhiteMix);
                snow*= _Tint.rgb;
                snow+=(hash(floor(p*24))-.5)*.012;
                return fixed4(snow,1);
            }
            ENDCG
        }
    }
}
