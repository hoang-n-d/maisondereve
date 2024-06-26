﻿using BussinessObject;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Service.Implementation;
using Service.Interface;

namespace StyleShopping.Pages
{
    public class IndexModel : PageModel
    {
        public IEnumerable<Interior> list { get; set; } = default!;
        public IEnumerable<Category> Categories { get; set; } = default!;
        private readonly IInteriorService interService;

        public int totalPage { get; set; } = default!;
        public int? indexPage { get; set; } = 1;
        public int? cate_id { get; set; } = 0;

        public int? original_cate { get; set; } = 0;
        public IndexModel()
        {
            interService = new InteriorService();
        }
        public IActionResult OnGetAsync(int? id1, int? id2)
        {
            if (original_cate != id1 && id1 != null)
            {
                indexPage = 1;
            }
            else
            {
                indexPage = id2 == null ? 1 : id2;
            }
            cate_id = id1;

            list = interService.List(cate_id);
            if (list.Count() % 6 == 0)
            {
                totalPage = list.Count() / 6;
            }
            else
            {
                totalPage = (list.Count() / 6) + 1;
            }

            if (indexPage != totalPage)
            {
                list = list.Skip(((int)indexPage - 1) * 6).Take(6);
            }
            else
            {
                list = list.Skip(((int)indexPage - 1) * 6).Take(6);
            }
            original_cate = cate_id;
            Categories = interService.ListCategory();
            return Page();
        }
    }
}