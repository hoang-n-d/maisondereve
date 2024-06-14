using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages.Admin
{
    public class ManageCategory : PageModel
    {
        public PagingModel<Category> Categories { get; set; } = default!;

        private readonly ICategoryService categoryService;
        public int totalPage { get; set; } = default!;
        public int? indexPage { get; set; } = 1;

        public ManageCategory()
        {
            categoryService = new CategoryService();
        }

        public IActionResult OnGetAsync(int page = 1)
        {
            if (page <= 0) page = 1;
            indexPage = page;

            int pageSize = 5;

            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }

            if (HttpContext.Session.GetInt32("role") != 1)
            {
                return RedirectToPage("/AccessDenied");
            }

            Categories = categoryService.List(page, pageSize);

            return Page();
        }
    }
}
