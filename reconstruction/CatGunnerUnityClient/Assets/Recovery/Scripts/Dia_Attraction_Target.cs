using UnityEngine;
public sealed class Dia_Attraction_Target : MonoBehaviour
{
    public Bounce _bounce;
    public void Bounce_Start(){if(_bounce!=null)_bounce.Bounce_Start();}
    void OnEnable()=>Dia_Attraction.instance.Target_Enable(this);
    void OnDisable(){if(Dia_Attraction.instance!=null)Dia_Attraction.instance.Target_Disable(this);}
}
