using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages.Admin
{
    public class EditCategoryModel : PageModel
    {
        private readonly ICategoryService categoryService;

        public EditCategoryModel()
        {
            categoryService = new CategoryService();
        }

        [BindProperty]
        public Category category { get; set; } = default!;

        public IActionResult OnGetAsync(int id)
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }
            if (HttpContext.Session.GetInt32("role") != 1)
            {
                return RedirectToPage("/AccessDenied");
            }

            category = categoryService.GetById(id);

            return Page();
        }

        public IActionResult OnPostAsync()
        {
            if (HttpContext.Session.GetInt32("user_id") == null)
            {
                return RedirectToPage("/Login");
            }
            if (HttpContext.Session.GetInt32("role") != 1)
            {
                return RedirectToPage("/AccessDenied");
            }

            categoryService.Update(category);

            return RedirectToPage("ManageCategory");
        }
    }
}
