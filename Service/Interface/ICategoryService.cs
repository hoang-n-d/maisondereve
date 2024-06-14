using BussinessObject;

namespace Service.Interface
{
    public interface ICategoryService
    {
        public void Add(Category category);
        public void Delete(int id);
        public PagingModel<Category> List(int page, int pageSize);
        public void Update(Category category);
        Category GetById(int id);
    }
}
