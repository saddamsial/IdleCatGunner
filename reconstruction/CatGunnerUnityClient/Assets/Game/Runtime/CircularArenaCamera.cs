using System.Collections.Generic;
using UnityEngine;

namespace CatGunner.Runtime
{
    [RequireComponent(typeof(Follow))]
    [DefaultExecutionOrder(100)]
    [UnityEngine.Scripting.APIUpdating.MovedFrom(true, sourceNamespace: "CatGunner.Recovery", sourceAssembly: "CatGunner.Recovery", sourceClassName: "CircularArenaCamera")] public sealed class CircularArenaCamera : MonoBehaviour
    {
        public CircularForestMap Circle;
        public Camera ViewCamera;
        public float Damping=.16f,SlowingDistance=12;
        public Rect SafeViewport=new Rect(.12f,.20f,.76f,.60f);
        private Follow original;
        private bool controlled,previousEnabled,hasPosition;
        private Vector3 previousTarget;
        private float previousRadius;
        private readonly List<PenguinBoneMotion> bodies=new List<PenguinBoneMotion>();
        private void Awake()=>original=GetComponent<Follow>();
        private void LateUpdate()
        {
            if(original==null||original.Target_trans==null||ViewCamera==null)return;
            var target=original.Target_trans.position;
            var client=GameClient.Instance;
            bool bound=client!=null&&client.ReadyForPlay&&client.Mode==0&&Circle!=null&&Circle.isActiveAndEnabled&&Circle.GetComponent<Tree_manager>().Map_obj.activeInHierarchy;
            if(!bound)
            {
                Release();hasPosition=false;
                if(original.enabled)transform.position=target;
                return;
            }
            if(!controlled){previousEnabled=original.enabled;original.enabled=false;controlled=true;hasPosition=false;}
            var desired=Goal(target);
            bool snap=!hasPosition||!Mathf.Approximately(previousRadius,Circle.Radius)||(target-previousTarget).sqrMagnitude>400;
            transform.position=snap?desired:Vector3.Lerp(transform.position,desired,1-Mathf.Exp(-Time.deltaTime/Mathf.Max(.01f,Damping)));
            KeepBodyVisible(target);
            previousTarget=target;previousRadius=Circle.Radius;hasPosition=true;
        }
        private Vector3 Goal(Vector3 target)
        {
            var delta=target-Circle.Center;delta.y=0;float distance=delta.magnitude;
            if(distance<.001f)return target;
            var direction=delta/distance;
            // Reserve enough visible travel for a whole penguin after the
            // camera stops. This uses the actual projection and aspect ratio.
            var centered=ProjectBounds(new Bounds(target+Vector3.up*4.5f,new Vector3(7,9,7)),target-transform.position);
            float width=2*ViewCamera.orthographicSize*ViewCamera.aspect,height=2*ViewCamera.orthographicSize;
            float dx=Vector3.Dot(direction,ViewCamera.transform.right)/width;
            float dy=Vector3.Dot(direction,ViewCamera.transform.up)/height;
            float room=16;
            if(Mathf.Abs(dx)>.00001f)room=Mathf.Min(room,(dx>0?SafeViewport.xMax-centered.xMax-.015f:centered.xMin-SafeViewport.xMin-.015f)/Mathf.Abs(dx));
            if(Mathf.Abs(dy)>.00001f)room=Mathf.Min(room,(dy>0?SafeViewport.yMax-centered.yMax-.015f:centered.yMin-SafeViewport.yMin-.015f)/Mathf.Abs(dy));
            float travel=Mathf.Clamp(room*.8f,0,16);
            float playerLimit=Circle.Radius-Circle.MovementPadding;
            float stop=Mathf.Max(0,playerLimit-travel),start=Mathf.Max(0,stop-SlowingDistance),end=stop+travel*.55f;
            if(distance<=start)return target;
            float t=Mathf.InverseLerp(start,Mathf.Max(start+.01f,end),distance);
            float radius=Mathf.Lerp(start,stop,Mathf.Sin(t*Mathf.PI*.5f));
            var result=Circle.Center+direction*radius;result.y=target.y;return result;
        }
        private Rect ProjectBounds(Bounds bounds,Vector3 cameraTranslation)
        {
            float width=2*ViewCamera.orthographicSize*ViewCamera.aspect,height=2*ViewCamera.orthographicSize;
            var correction=new Vector2(Vector3.Dot(cameraTranslation,ViewCamera.transform.right)/width,Vector3.Dot(cameraTranslation,ViewCamera.transform.up)/height);
            var min=new Vector2(float.MaxValue,float.MaxValue);var max=new Vector2(float.MinValue,float.MinValue);
            for(int x=-1;x<=1;x+=2)for(int y=-1;y<=1;y+=2)for(int z=-1;z<=1;z+=2)
            {
                var point=ViewCamera.WorldToViewportPoint(bounds.center+Vector3.Scale(bounds.extents,new Vector3(x,y,z)));
                var view=new Vector2(point.x,point.y)-correction;min=Vector2.Min(min,view);max=Vector2.Max(max,view);
            }
            return Rect.MinMaxRect(min.x,min.y,max.x,max.y);
        }
        private void KeepBodyVisible(Vector3 target)
        {
            // Only character geometry drives framing. Weapon particles and
            // projectiles cannot pull the camera away from the penguin.
            var bounds=new Bounds(target+Vector3.up*4.5f,new Vector3(3,9,3));
            original.Target_trans.GetComponentsInChildren(false,bodies);
            foreach(var body in bodies)
                if(body.Renderer!=null&&body.Renderer.enabled&&body.Renderer.gameObject.activeInHierarchy)bounds.Encapsulate(body.Renderer.bounds);
            bounds.Expand(.8f);
            var view=ProjectBounds(bounds,Vector3.zero);
            float x=view.xMax>SafeViewport.xMax?view.xMax-SafeViewport.xMax:view.xMin<SafeViewport.xMin?view.xMin-SafeViewport.xMin:0;
            float y=view.yMax>SafeViewport.yMax?view.yMax-SafeViewport.yMax:view.yMin<SafeViewport.yMin?view.yMin-SafeViewport.yMin:0;
            if(Mathf.Abs(x)+Mathf.Abs(y)<.000001f)return;
            var right=ViewCamera.transform.right;var up=ViewCamera.transform.up;
            float determinant=right.x*up.z-right.z*up.x;if(Mathf.Abs(determinant)<.0001f)return;
            x*=2*ViewCamera.orthographicSize*ViewCamera.aspect;y*=2*ViewCamera.orthographicSize;
            transform.position+=new Vector3((x*up.z-y*right.z)/determinant,0,(y*right.x-x*up.x)/determinant);
        }
        private void Release()
        {
            if(controlled&&original!=null)original.enabled=previousEnabled;
            controlled=false;
        }
        private void OnDisable(){Release();hasPosition=false;}
    }
}
