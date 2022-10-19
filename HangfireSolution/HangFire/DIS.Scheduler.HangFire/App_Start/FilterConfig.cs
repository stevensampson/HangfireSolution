using System.Web;
using System.Web.Mvc;

namespace DIS.Scheduler.HangFire
{
    public static class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
