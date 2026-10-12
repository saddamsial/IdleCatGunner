using System;
using System.Globalization;
using System.IO;
namespace CatGunner.Recovery
{
    // Local offline daily-clock adapter; server/anti-cheat rollover is not restored.
    public static class OriginalMineTickets
    {
        public static bool Reload(OriginalSaveData state,DateTime today)
        {
            if(state.TicketUse_Count<0)throw new InvalidDataException("Negative mine ticket count; save preserved");
            DateTime charged=DateTime.MinValue;
            if(!string.IsNullOrEmpty(state.TicketCharge_Date)&&
                !DateTime.TryParse(state.TicketCharge_Date,CultureInfo.InvariantCulture,DateTimeStyles.RoundtripKind,out charged)&&
                !DateTime.TryParse(state.TicketCharge_Date,out charged))throw new InvalidDataException("Unrecognized mine ticket date; save preserved");
            if(charged.Date>=today.Date)return false;
            state.TicketUse_Count=0;state.TicketCharge_Date=today.Date.ToString("O",CultureInfo.InvariantCulture);return true;
        }
    }
}
