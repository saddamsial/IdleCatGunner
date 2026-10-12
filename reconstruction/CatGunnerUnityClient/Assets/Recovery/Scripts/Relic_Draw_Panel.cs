using System;
using System.Collections;
using UnityEngine;
public sealed class Relic_Draw_Panel : MonoBehaviour
{
 public Relic_Item_Demo Relic_Item_Single;public Relic_Item_Demo[] Relic_Item_List;public GameObject Relic_Item_obj;public GameObject[] Relic_Item_obj_List;
 public GameObject Close_Btn,Left_Btn,Right_Btn;public float Single_CloseDelay,Multi_Interval,Page_Delay;
 private Relic_Info[] _list;private int _page,_pageCount;private bool _isDrawing;private Coroutine _drawRoutine;
 public int Page=>_page;public int PageCount=>_pageCount;public bool IsDrawing=>_isDrawing;
 public int PageSize=>Math.Min(Relic_Item_List.Length,Relic_Item_obj_List.Length);
 public void Reload(Relic_Info[] rows)
 {
  if(rows==null||rows.Length==0)return;if(_drawRoutine!=null)StopCoroutine(_drawRoutine);_list=rows;_page=0;_pageCount=Mathf.CeilToInt(rows.Length/(float)PageSize);
  gameObject.SetActive(true);Close_Btn.SetActive(false);Left_Btn.SetActive(false);Right_Btn.SetActive(false);_drawRoutine=StartCoroutine(rows.Length==1?Draw_Single(rows[0]):Draw_Multi());Play(7);
 }
 private IEnumerator Draw_Single(Relic_Info info)
 {
  _isDrawing=true;foreach(var go in Relic_Item_obj_List)go.SetActive(false);Relic_Item_Single.Reload(info);Relic_Item_obj.SetActive(true);
  yield return new WaitForSeconds(Single_CloseDelay);_isDrawing=false;Close_Btn.SetActive(true);_drawRoutine=null;
 }
 private IEnumerator Draw_Multi()
 {
  _isDrawing=true;Relic_Item_obj.SetActive(false);var itemWait=new WaitForSeconds(Multi_Interval);var pageWait=new WaitForSeconds(Page_Delay);
  for(int page=0;page<_pageCount;page++)
  {
   _page=page;if(page>0)yield return pageWait;Page_Setup(page,false);int n=Math.Min(PageSize,_list.Length-page*PageSize);
   for(int i=0;i<n;i++){Relic_Item_obj_List[i].SetActive(true);Play(14);yield return itemWait;}
  }
  _isDrawing=false;Close_Btn.SetActive(true);Arrow_Reload();_drawRoutine=null;
 }
 public void Page_Setup(int page,bool show)
 {
  for(int i=0;i<PageSize;i++){int index=page*PageSize+i;bool valid=index<_list.Length;if(valid)Relic_Item_List[i].Reload(_list[index]);Relic_Item_obj_List[i].SetActive(valid&&show);}
 }
 public void Arrow_Reload(){Left_Btn.SetActive(!_isDrawing&&_pageCount>1&&_page>0);Right_Btn.SetActive(!_isDrawing&&_pageCount>1&&_page<_pageCount-1);}
 public void OnClick_Left(){if(_isDrawing||_page<=0)return;_page--;Page_Setup(_page,true);Arrow_Reload();Play(14);}
 public void OnClick_Right(){if(_isDrawing||_page>=_pageCount-1)return;_page++;Page_Setup(_page,true);Arrow_Reload();Play(14);}
 public void Close(){if(_drawRoutine!=null)StopCoroutine(_drawRoutine);_drawRoutine=null;_isDrawing=false;gameObject.SetActive(false);}
 private static void Play(int type){if(Sound_manager.instance!=null)Sound_manager.instance.PlaySfx((SfxType)type);}
}
