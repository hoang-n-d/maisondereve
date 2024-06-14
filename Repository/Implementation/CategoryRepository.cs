using BussinessObject;
using Repository.Interface;
using StyleShopping.DAO;

namespace Repository.Implementation
{
    public class CategoryRepository : ICategoryRepository
    {
        public void Add(Category category) => CategoryDAO.Instance.Add(category);

        public void Delete(int id) => CategoryDAO.Instance.Delete(id);

        public Category? GetById(int id) => CategoryDAO.Instance.GetById(id);

        public PagingModel<Category> List(int page, int pageSize) => CategoryDAO.Instance.List(page, pageSize);

        public void Update(Category category) => CategoryDAO.Instance.Update(category);
    }
}
