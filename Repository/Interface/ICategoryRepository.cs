using BussinessObject;

namespace Repository.Interface
{
    public interface ICategoryRepository
    {
        public void Add(Category category);
        public void Delete(int id);
        public PagingModel<Category> List(int page, int pageSize);
        public void Update(Category category);
        Category GetById(int id);
    }
}
