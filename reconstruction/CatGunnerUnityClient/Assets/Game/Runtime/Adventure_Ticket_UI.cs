using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.UI;
using CatGunner.Runtime;
public sealed class Adventure_Ticket_UI : MonoBehaviour
{
 public TMPro.TextMeshProUGUI[] Count_txt;
 public TMPro.TextMeshProUGUI[] Cooltime_txt;

 private Coroutine routine;
 private void OnEnable(){routine=StartCoroutine(Tick());}
 private void OnDisable(){if(routine!=null)StopCoroutine(routine);routine=null;}
 private IEnumerator Tick(){while(true){Reload();yield return new WaitForSeconds(1);}}
 public void Reload(){var m=Adventure_manager.instance;if(m==null||m.Progression==null)return;m.Ticket_Refresh();foreach(var t in Count_txt)t.text=m.Ticket_Now.ToString();string value=m.Ticket_Now>=20?"Max":Format_Cooltime(m.Progression.TicketRemaining());foreach(var t in Cooltime_txt)t.text=value;}
 public static string Format_Cooltime(TimeSpan d){if(d<TimeSpan.Zero)d=TimeSpan.Zero;return d.TotalHours>=1?$"{(int)d.TotalHours}h {d.Minutes}m":d.Minutes>=1?$"{d.Minutes}m {d.Seconds}s":$"{d.Seconds}s";}

}
