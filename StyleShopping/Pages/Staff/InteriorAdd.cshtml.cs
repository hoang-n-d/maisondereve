using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages.Staff
{
    public class InteriorAddModel : PageModel
    {
        private readonly IInteriorService interService;

        public InteriorAddModel()
        {
            interService = new InteriorService();
        }
        public IEnumerable<Category> list { get; set; } = default!;
        [BindProperty]
        public Interior interior { get; set; } = default!;
        public IActionResult OnGetAsync()
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }
            if (HttpContext.Session.GetInt32("role") != 2)
            {
                return RedirectToPage("/AccessDenied");
            }
            list = interService.ListCategory();
            return Page();
        }
        public IActionResult OnPostAsync()
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }
            if (HttpContext.Session.GetInt32("role") != 2)
            {
                return RedirectToPage("/AccessDenied");
            }
            interior.Status = 1;
            interService.Add(interior);
            int totalInter = interService.ListAdmin().Count;
            int? index = (totalInter % 5) == 0 ? (totalInter / 5) : (totalInter / 5) + 1;
            return RedirectToPage("InteriorManage", new { id = index });
        }
    }
}
