using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages.Admin
{
    public class ChangeOrderStatusModel : PageModel
    {
        private readonly IQuotationService quotationService;

        public ChangeOrderStatusModel()
        {
            quotationService = new QuotationService();
        }

        public IActionResult OnGetAsync(int id, int status, string callback)
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }

            if (HttpContext.Session.GetInt32("role") != 1)
            {
                return RedirectToPage("/AccessDenied");
            }

            quotationService.ChangeOrderStatus(id, status);

            return RedirectToPage(callback);
        }
    }
}
