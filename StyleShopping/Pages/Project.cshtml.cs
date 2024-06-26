using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages
{
    public class ProjectModel : PageModel
    {
        public IEnumerable<Project> list { get; set; } = default!;
        private readonly IProjectService projectService;
        public int totalPage { get; set; } = default!;
        public int? indexPage { get; set; } = 1;
        public ProjectModel()
        {
            projectService = new ProjectService();
        }
        public IActionResult OnGetAsync(int? id)
        {
            indexPage = id == null ? 1 : id;
            list = projectService.List();
            if (list.Count() % 3 == 0)
            {
                totalPage = list.Count() / 3;
            }
            else
            {
                totalPage = (list.Count() / 3) + 1;
            }

            if (indexPage != totalPage)
            {
                list = list.Skip(((int)indexPage - 1) * 3).Take(3);
            }
            else
            {
                list = list.Skip(((int)indexPage - 1) * 3).Take(3);
            }

            return Page();
        }
    }
}
