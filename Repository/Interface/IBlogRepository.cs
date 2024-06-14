using BussinessObject;

namespace Repository.Interface
{
    public interface IBlogRepository
    {
        public List<Blog> List();


        public Blog Get(int id);

        void Add(Blog blog);
        void Update(Blog blog);

        List<Blog> ListAdmin();
    }
}
