using BussinessObject;
using Repository.Implementation;
using Repository.Interface;
using Service.Interface;

namespace Service.Implementation
{
    public class CategoryService : ICategoryService
    {
        private ICategoryRepository _repository;
        public CategoryService()
        {
            _repository = new CategoryRepository();
        }

        public void Add(Category category)
        {
            _repository.Add(category);
        }

        public void Delete(int id)
        {
            _repository.Delete(id);
        } 

        public Category GetById(int id)
        {
            return _repository.GetById(id);
        }

        public PagingModel<Category> List(int page, int pageSize)
        {
            return _repository.List(page, pageSize);
        }

        public void Update(Category category)
        {
            _repository.Update(category);
        }
    }
}
