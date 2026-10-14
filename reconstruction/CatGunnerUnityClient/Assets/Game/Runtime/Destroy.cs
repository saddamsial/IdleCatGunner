using System.Collections;
using UnityEngine;

// Original pooled lifetime component (name preserved, no Object.Destroy call).
public sealed class Destroy : MonoBehaviour
{
    public float Destroy_Time;
    private IEnumerator cor;
    public void Active() {gameObject.SetActive(true);Restart();}
    private void OnEnable() => Restart();
    private void Restart()
    {
        if(cor!=null) StopCoroutine(cor);cor=Disable();StartCoroutine(cor);
    }
    private void OnDisable()
    {
        if(cor==null) return;StopCoroutine(cor);gameObject.SetActive(false);
    }
    private IEnumerator Disable() {yield return new WaitForSeconds(Destroy_Time);gameObject.SetActive(false);}
}
