

using BussinessObject;
using Microsoft.EntityFrameworkCore;

namespace StyleShopping.DAO
{
    public class CategoryDAO
    {
        private static CategoryDAO? instance = null;
        private static readonly object instanceLock = new();
        private CategoryDAO() { }
        public static CategoryDAO Instance
        {
            get
            {
                lock (instanceLock)
                {
                    if (instance == null)
                    {
                        instance = new CategoryDAO();
                    }
                    return instance;
                }

            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="page"></param>
        /// <param name="pageSize"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public PagingModel<Category> List(int page, int pageSize)
        {
            PagingModel<Category> response = new();
            try
            {
                using var _context = new styleContext();
                response.TotalItems = _context.Categories.Count();
                response.List = _context.Categories.Skip((page - 1) * pageSize).Take(pageSize).ToList();
                response.ItemsPerPage = pageSize;
                response.CurrentPage = page;
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            return response;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        public Category? GetById(int id)
        {
            Category? category = null;
            try
            {
                using var _context = new styleContext();
                category = _context.Categories.FirstOrDefault(x => x.Id == id);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
            return category;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="category"></param>
        /// <exception cref="Exception"></exception>
        public void Add(Category category)
        {
            try
            {
                var categoryFound = GetById(category.Id);
                if (categoryFound == null)
                {
                    using var _context = new styleContext();
                    _context.Categories.Add(category);
                    _context.SaveChanges();
                }
                else
                {
                    throw new Exception("The category is already exist");
                }

            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="category"></param>
        /// <exception cref="Exception"></exception>
        public void Update(Category category)
        {
            try
            {
                Category p = GetById(category.Id);
                if (p != null)
                {
                    using var _context = new styleContext();
                    _context.Entry<Category>(category).State = EntityState.Modified;
                    _context.SaveChanges();
                }
                else
                {
                    throw new Exception("The category does not exist");
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        /// <summary>
        /// Xóa một category
        /// </summary>
        /// <param name="id"></param>
        /// <exception cref="Exception"></exception>
        public void Delete(int id)
        {
            try
            {
                var category = GetById(id);
                if (category != null)
                {
                    using var _context = new styleContext();
                    _context.Categories.Remove(category);
                    _context.SaveChanges();
                }
                else
                {
                    throw new Exception("The category does not exist");
                }
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
}
