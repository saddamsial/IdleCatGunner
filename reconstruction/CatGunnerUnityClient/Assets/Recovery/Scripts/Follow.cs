using UnityEngine;

public sealed class Follow : MonoBehaviour
{
    public Transform Target_trans;
    private void Update() => transform.position=Target_trans.position;
}
