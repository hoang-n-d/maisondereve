using BussinessObject;

namespace Service.Interface
{
    public interface IBlogService
    {
        public IEnumerable<Blog> List();

        Blog Get(int id);

        public void Add(Blog blog);


        public void Update(Blog blog);

        List<Blog> ListAdmin();
    }
}
