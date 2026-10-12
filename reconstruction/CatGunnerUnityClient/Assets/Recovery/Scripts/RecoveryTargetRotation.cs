using System;
using UnityEngine;

namespace CatGunner.Recovery
{
    // Target/Triangle only: original DOLocalRotate/Fast/Linear/Incremental.
    // Local scheduler retains scaled phase across inactive periods; it is not
    // DOTween's global allocation, hidden-transform update or general API.
    public sealed class RecoveryTargetRotation : MonoBehaviour
    {
        [Serializable] public sealed class Configuration
        {
            public int SourceComponent;
            public float Duration;
            public Vector3 EndEuler,SourcePosition,SourceScale;
            public Quaternion SourceQuaternion;
        }
        Configuration config;
        bool started;
        double startTime;
        Vector3 startEuler,change;
        public int OriginalComponent=>config?.SourceComponent??0;
        public Vector3 CycleChange=>change;
        public void Configure(Configuration value)
        {
            if(config!=null)return;
            if(value==null||value.SourceComponent!=123889||value.Duration!=3)
                throw new InvalidOperationException("Original target rotation contract missing");
            config=value;
            if(isActiveAndEnabled)BeginOrResume();
        }
        void OnEnable(){if(config!=null)BeginOrResume();}
        void BeginOrResume()
        {
            if(!started)
            {
                // Use actual quaternion, never the exported Euler hint.
                startEuler=transform.localRotation.eulerAngles;
                change=config.EndEuler-startEuler;
                for(int i=0;i<3;i++)
                    if(Mathf.Abs(change[i])>180)change[i]+=change[i]<0?360:-360;
                startTime=Time.timeAsDouble;started=true;
            }
            Apply();
        }
        void Update(){if(started)Apply();}
        void Apply()
        {
            float cycles=(float)(Math.Max(0,Time.timeAsDouble-startTime)/config.Duration);
            transform.localRotation=Quaternion.Euler(startEuler+change*cycles);
        }
    }
}
