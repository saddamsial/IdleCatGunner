using UnityEngine;

// Exact native 65 per-gun records, scaled time and 3-per-frame limit.
public static class FXThrottle
{
    private struct Record {public float time;public Vector3 position;}
    private static readonly Record[] _last=new Record[65];
    private static int _frameCount,_spawnThisFrame;
    public static bool CanSpawn(int gun,Vector3 position)
    {
        int frame=Time.frameCount;
        if(frame!=_frameCount) {_frameCount=frame;_spawnThisFrame=0;}
        if(_spawnThisFrame>=3) return false;
        ref var record=ref _last[gun];
        float now=Time.time;
        if(now-record.time<.05f && (position-record.position).sqrMagnitude<2.25f) return false;
        record.time=now;record.position=position;_spawnThisFrame++;return true;
    }
}
