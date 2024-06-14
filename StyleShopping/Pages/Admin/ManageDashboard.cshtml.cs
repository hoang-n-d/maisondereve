using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages.Admin
{
    public class ManageDashboardModel : PageModel
    {
        private readonly IQuotationService service;
        private readonly IAccountService serviceA;
        public ManageDashboardModel()
        {
            service = new QuotationService();
            serviceA = new AccountService();
        }

        public int totalOrderCancel { get; set; }
        public int totalOrderSuccess { get; set; }
        public int totalRevenue { get; set; }
        public int totalCustomer { get; set; }

        public OrderStatiscal OrderStatiscal;
        public IActionResult OnGet()
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }
            if (HttpContext.Session.GetInt32("role") != 1)
            {
                return RedirectToPage("/AccessDenied");
            }

            int totalCart = 0;
            OrderStatiscal = service.OrderStatiscal();

            totalOrderCancel = service.GetAllOrderAdmin().Select(x => x.Status == 0).Count();
            totalOrderSuccess = service.GetAllOrderAdmin().Select(x => x.Status == 2).Count();
            foreach (var item in service.GetAllOrderAdmin())
            {
                var details = service.GetAllOrderDetail(item.OrderId);
                foreach (var i in details)
                {
                    totalCart += (int)i.Quantity * (int)i.Interior.Price;
                }
            }
            totalRevenue = totalCart;
            totalCustomer = serviceA.ListAdmin().Select(x => x.Role == 0).Count();

            return Page();
        }
    }
}
